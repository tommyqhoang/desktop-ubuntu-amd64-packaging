#!/bin/sh

git config --global --add safe.directory /github/workspace
git config --global --add safe.directory '*'

yarn
yarn run postinstall
yarn build:prod
yarn run package

yarn test:setup
yarn test:unit
yarn test:script
