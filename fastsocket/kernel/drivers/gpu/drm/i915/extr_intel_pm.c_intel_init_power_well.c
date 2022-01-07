
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int HSW_PWR_WELL_BIOS ;
 int HSW_PWR_WELL_ENABLE ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int ) ;
 int IS_HASWELL (struct drm_device*) ;
 int intel_set_power_well (struct drm_device*,int) ;

void intel_init_power_well(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;

 if (!IS_HASWELL(dev))
  return;


 intel_set_power_well(dev, 1);



 if (I915_READ(HSW_PWR_WELL_BIOS) & HSW_PWR_WELL_ENABLE)
  I915_WRITE(HSW_PWR_WELL_BIOS, 0);
}
