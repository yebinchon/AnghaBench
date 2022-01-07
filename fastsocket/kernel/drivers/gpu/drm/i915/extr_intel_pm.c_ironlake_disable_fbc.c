
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int DPFC_CTL_EN ;
 int DRM_DEBUG_KMS (char*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int ILK_DPFC_CONTROL ;

__attribute__((used)) static void ironlake_disable_fbc(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 u32 dpfc_ctl;


 dpfc_ctl = I915_READ(ILK_DPFC_CONTROL);
 if (dpfc_ctl & DPFC_CTL_EN) {
  dpfc_ctl &= ~DPFC_CTL_EN;
  I915_WRITE(ILK_DPFC_CONTROL, dpfc_ctl);

  DRM_DEBUG_KMS("disabled FBC\n");
 }
}
