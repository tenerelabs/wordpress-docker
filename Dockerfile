# Please match the value you have in .env
# This value can be overwritten with ' --build-arg key=val', EX: 'docker-compose build--build-arg WP_TAG=latest'..
ARG WP_TAG=5.3.2 

FROM wordpress:$WP_TAG

LABEL MAINTAINER="TenereLabs.com"

# Change the uid and guid as needed
# In your host machine type: 'id -u your_username', 'id -g your_username'
ARG UID=1000
ARG GID=1000

RUN usermod -u $UID www-data && \
    groupmod -g $GID www-data
