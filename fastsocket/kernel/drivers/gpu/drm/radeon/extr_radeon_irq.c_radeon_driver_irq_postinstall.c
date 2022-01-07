
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {int max_vblank_count; scalar_t__ dev_private; } ;
struct TYPE_2__ {int flags; int swi_queue; int swi_emitted; } ;
typedef TYPE_1__ drm_radeon_private_t ;


 int CHIP_R600 ;
 int DRM_INIT_WAITQUEUE (int *) ;
 int RADEON_FAMILY_MASK ;
 int RADEON_SW_INT_ENABLE ;
 int atomic_set (int *,int ) ;
 int radeon_irq_set_state (struct drm_device*,int ,int) ;

int radeon_driver_irq_postinstall(struct drm_device *dev)
{
 drm_radeon_private_t *dev_priv =
     (drm_radeon_private_t *) dev->dev_private;

 atomic_set(&dev_priv->swi_emitted, 0);
 DRM_INIT_WAITQUEUE(&dev_priv->swi_queue);

 dev->max_vblank_count = 0x001fffff;

 if ((dev_priv->flags & RADEON_FAMILY_MASK) >= CHIP_R600)
  return 0;

 radeon_irq_set_state(dev, RADEON_SW_INT_ENABLE, 1);

 return 0;
}
