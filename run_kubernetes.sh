#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=tanyastephens/udacity-project4

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run --image "$dockerpath":1.0 --port 5000 udacity-project4 

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host

kubectl port-forward udacity-project4 5000:5000