
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_2__ {int * fbdev; } ;
typedef TYPE_1__ drm_i915_private_t ;


 int intel_fbdev_destroy (struct drm_device*,int *) ;
 int kfree (int *) ;

void intel_fbdev_fini(struct drm_device *dev)
{
 drm_i915_private_t *dev_priv = dev->dev_private;
 if (!dev_priv->fbdev)
  return;

 intel_fbdev_destroy(dev, dev_priv->fbdev);
 kfree(dev_priv->fbdev);
 dev_priv->fbdev = ((void*)0);
}
