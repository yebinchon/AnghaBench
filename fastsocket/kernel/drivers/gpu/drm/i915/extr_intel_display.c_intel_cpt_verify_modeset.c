
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int DRM_ERROR (char*,int) ;
 scalar_t__ I915_READ (int) ;
 int PIPEDSL (int) ;
 int udelay (int) ;
 scalar_t__ wait_for (int,int) ;

void intel_cpt_verify_modeset(struct drm_device *dev, int pipe)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 int dslreg = PIPEDSL(pipe);
 u32 temp;

 temp = I915_READ(dslreg);
 udelay(500);
 if (wait_for(I915_READ(dslreg) != temp, 5)) {
  if (wait_for(I915_READ(dslreg) != temp, 5))
   DRM_ERROR("mode set failed: pipe %d stuck\n", pipe);
 }
}
