#!/bin/bash -e

# Upgrade system
sudo apt-get update && sudo apt-get upgrade

# Install prerequisite packages
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common -y

# Add docker's official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add the Docker repository (Ubuntu 18.04 LTS, bionic)
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"

# Install Docker Engine
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io -y

# Verify the Docker Engine installation
sudo docker run hello-world
