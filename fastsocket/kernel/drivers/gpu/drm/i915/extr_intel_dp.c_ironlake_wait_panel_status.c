
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_dp {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int DRM_DEBUG_KMS (char*,int,int,int,int) ;
 int DRM_ERROR (char*,int,int) ;
 int I915_READ (int ) ;
 int PCH_PP_CONTROL ;
 int PCH_PP_STATUS ;
 scalar_t__ _wait_for (int,int,int) ;
 struct drm_device* intel_dp_to_dev (struct intel_dp*) ;

__attribute__((used)) static void ironlake_wait_panel_status(struct intel_dp *intel_dp,
           u32 mask,
           u32 value)
{
 struct drm_device *dev = intel_dp_to_dev(intel_dp);
 struct drm_i915_private *dev_priv = dev->dev_private;

 DRM_DEBUG_KMS("mask %08x value %08x status %08x control %08x\n",
        mask, value,
        I915_READ(PCH_PP_STATUS),
        I915_READ(PCH_PP_CONTROL));

 if (_wait_for((I915_READ(PCH_PP_STATUS) & mask) == value, 5000, 10)) {
  DRM_ERROR("Panel status timeout: status %08x control %08x\n",
     I915_READ(PCH_PP_STATUS),
     I915_READ(PCH_PP_CONTROL));
 }
}
