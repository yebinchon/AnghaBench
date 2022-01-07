
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* update_wm ) (struct drm_device*) ;} ;
struct drm_i915_private {TYPE_1__ display; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int stub1 (struct drm_device*) ;

void intel_update_watermarks(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;

 if (dev_priv->display.update_wm)
  dev_priv->display.update_wm(dev);
}
