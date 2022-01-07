
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dev_private; } ;


 int i915_update_gfx_val (int ) ;

void intel_mark_busy(struct drm_device *dev)
{
 i915_update_gfx_val(dev->dev_private);
}
