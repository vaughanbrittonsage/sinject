#!/bin/sh

echo start rspec tests
docker-compose up -d

spec_path=spec/$1

docker exec -it gem_test_runner sh -c "cd gem_src && bundle install && bundle exec rspec $*"
