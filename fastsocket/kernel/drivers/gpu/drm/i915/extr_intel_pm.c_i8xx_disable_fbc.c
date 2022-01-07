
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int DRM_DEBUG_KMS (char*) ;
 int FBC_CONTROL ;
 int FBC_CTL_EN ;
 int FBC_STATUS ;
 int FBC_STAT_COMPRESSING ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 scalar_t__ wait_for (int,int) ;

__attribute__((used)) static void i8xx_disable_fbc(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 u32 fbc_ctl;


 fbc_ctl = I915_READ(FBC_CONTROL);
 if ((fbc_ctl & FBC_CTL_EN) == 0)
  return;

 fbc_ctl &= ~FBC_CTL_EN;
 I915_WRITE(FBC_CONTROL, fbc_ctl);


 if (wait_for((I915_READ(FBC_STATUS) & FBC_STAT_COMPRESSING) == 0, 10)) {
  DRM_DEBUG_KMS("FBC idle timed out\n");
  return;
 }

 DRM_DEBUG_KMS("disabled FBC\n");
}
