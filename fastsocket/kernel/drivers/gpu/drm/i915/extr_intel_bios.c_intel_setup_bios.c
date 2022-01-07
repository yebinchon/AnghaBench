
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int HAS_PCH_SPLIT (struct drm_device*) ;
 scalar_t__ I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int PP_OFF_DELAYS ;
 int PP_ON_DELAYS ;

void intel_setup_bios(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;


 if (!HAS_PCH_SPLIT(dev) &&
     I915_READ(PP_ON_DELAYS) == 0 && I915_READ(PP_OFF_DELAYS) == 0) {

  I915_WRITE(PP_ON_DELAYS, 0x019007d0);


  I915_WRITE(PP_OFF_DELAYS, 0x015e07d0);
 }
}
