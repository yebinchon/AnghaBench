
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {scalar_t__ dev_private; } ;
struct TYPE_2__ {int fence_queue; } ;
typedef TYPE_1__ drm_mga_private_t ;


 int DRM_INIT_WAITQUEUE (int *) ;
 int MGA_IEN ;
 int MGA_SOFTRAPEN ;
 int MGA_WRITE (int ,int ) ;

int mga_driver_irq_postinstall(struct drm_device *dev)
{
 drm_mga_private_t *dev_priv = (drm_mga_private_t *) dev->dev_private;

 DRM_INIT_WAITQUEUE(&dev_priv->fence_queue);




 MGA_WRITE(MGA_IEN, MGA_SOFTRAPEN);
 return 0;
}
