LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := crystalcraze_shared

LOCAL_MODULE_FILENAME := libcrystalcraze

LOCAL_SRC_FILES := crystalcraze/main.cpp \
                   ../../Classes/AppDelegate.cpp

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../Classes

LOCAL_WHOLE_STATIC_LIBRARIES := cocos_jsb_static

LOCAL_EXPORT_CFLAGS := -DCOCOS2D_DEBUG=2 -DCOCOS2D_JAVASCRIPT

include $(BUILD_SHARED_LIBRARY)

$(call import-module,scripting/javascript/bindings)
