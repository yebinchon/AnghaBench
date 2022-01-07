
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_3__ {int mmio; } ;
typedef TYPE_1__ drm_radeon_private_t ;


 int DRM_DEBUG (char*) ;
 int drm_rmmap (struct drm_device*,int ) ;
 int kfree (TYPE_1__*) ;

int radeon_driver_unload(struct drm_device *dev)
{
 drm_radeon_private_t *dev_priv = dev->dev_private;

 DRM_DEBUG("\n");

 drm_rmmap(dev, dev_priv->mmio);

 kfree(dev_priv);

 dev->dev_private = ((void*)0);
 return 0;
}
