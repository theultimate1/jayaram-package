#!/usr/bin/bash

TARGET_DIR=/mnt/g/My\ Drive/Backup/

CHOSEN_DIRS=("/mnt/c/Users/pajay/Documents/Spring2023"
'/mnt/c/Users/pajay/Documents/Taxes/'
'/mnt/c/Users/pajay/Documents/Internships/'
'/mnt/c/Users/pajay/Documents/Jobs/'
'/mnt/c/Users/pajay/Documents/Resume/')

for dir in ${CHOSEN_DIRS[@]}; do
 rsync -av "$dir" "${TARGET_DIR}$(basename $dir)"
done


