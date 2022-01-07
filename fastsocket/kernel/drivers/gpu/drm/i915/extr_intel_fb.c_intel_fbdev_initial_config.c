
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_device {TYPE_2__* dev_private; } ;
struct TYPE_4__ {TYPE_1__* fbdev; } ;
typedef TYPE_2__ drm_i915_private_t ;
struct TYPE_3__ {int helper; } ;


 int drm_fb_helper_initial_config (int *,int) ;

void intel_fbdev_initial_config(struct drm_device *dev)
{
 drm_i915_private_t *dev_priv = dev->dev_private;


 drm_fb_helper_initial_config(&dev_priv->fbdev->helper, 32);
}
