% Copyright 2016 The MathWorks, Inc.

clear


load trainednet

clear camera

camera = webcam; % Connect to the camera
nnet = myNet;  % Load the neural net

while true   
    picture = camera.snapshot;              % Take a picture    
    picture = imresize(picture,[227,227]);  % Resize the picture

    label = classify(nnet, picture);        % Classify the picture
       
    image(picture);     % Show the picture
    title(char(label)); % Show the label
    drawnow;   
end