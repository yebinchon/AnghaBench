
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* update_linetime_wm ) (struct drm_device*,int,struct drm_display_mode*) ;} ;
struct drm_i915_private {TYPE_1__ display; } ;
struct drm_display_mode {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int stub1 (struct drm_device*,int,struct drm_display_mode*) ;

void intel_update_linetime_watermarks(struct drm_device *dev,
  int pipe, struct drm_display_mode *mode)
{
 struct drm_i915_private *dev_priv = dev->dev_private;

 if (dev_priv->display.update_linetime_wm)
  dev_priv->display.update_linetime_wm(dev, pipe, mode);
}
