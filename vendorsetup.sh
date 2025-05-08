deviceDir=$(gettop)/device/motorola/odessa

# permission
chmod +x device/motorola/odessa/applyPatches.sh

rm -rf external/zlib-ng
rm -rf external/zlib
rm -rf external/jemalloc_new

git clone https://github.com/ProtonAOSP/android_external_zlib-ng.git -b sc-qpr3 externel/zlib-ng
git clone https://github.com/ProtonAOSP/android_external_jemalloc_new.git -b sc-qpr3 external/jemalloc_new

# apply patches
${deviceDir}/applyPatches.sh ${deviceDir}/patches
