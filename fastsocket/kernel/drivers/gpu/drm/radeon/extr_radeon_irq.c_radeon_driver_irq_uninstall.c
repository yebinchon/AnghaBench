
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {scalar_t__ dev_private; } ;
struct TYPE_2__ {int flags; } ;
typedef TYPE_1__ drm_radeon_private_t ;


 int CHIP_R600 ;
 int CHIP_RS600 ;
 int R500_DxMODE_INT_MASK ;
 int RADEON_FAMILY_MASK ;
 int RADEON_GEN_INT_CNTL ;
 int RADEON_WRITE (int ,int ) ;

void radeon_driver_irq_uninstall(struct drm_device * dev)
{
 drm_radeon_private_t *dev_priv =
     (drm_radeon_private_t *) dev->dev_private;
 if (!dev_priv)
  return;

 if ((dev_priv->flags & RADEON_FAMILY_MASK) >= CHIP_R600)
  return;

 if ((dev_priv->flags & RADEON_FAMILY_MASK) >= CHIP_RS600)
  RADEON_WRITE(R500_DxMODE_INT_MASK, 0);

 RADEON_WRITE(RADEON_GEN_INT_CNTL, 0);
}
