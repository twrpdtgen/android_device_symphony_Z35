#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from Z35 device
$(call inherit-product, device/symphony/Z35/device.mk)

PRODUCT_DEVICE := Z35
PRODUCT_NAME := omni_Z35
PRODUCT_BRAND := Symphony
PRODUCT_MODEL := Z35
PRODUCT_MANUFACTURER := symphony

PRODUCT_GMS_CLIENTID_BASE := android-orange-{country}-revc

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_v755-user 11 RP1A.200720.011 12327111 release-keys"

BUILD_FINGERPRINT := Symphony/Z35/Z35:11/RP1A.200720.011/12327111:user/release-keys
