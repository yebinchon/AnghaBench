
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct drm_device {scalar_t__ dev_private; } ;
struct TYPE_2__ {int irq_enable_mask; } ;
typedef TYPE_1__ drm_via_private_t ;


 int DRM_DEBUG (char*) ;
 int VIA_IRQ_VBLANK_ENABLE ;
 int VIA_READ (int ) ;
 int VIA_READ8 (int) ;
 int VIA_REG_INTERRUPT ;
 int VIA_WRITE (int ,int) ;
 int VIA_WRITE8 (int,int) ;

void via_driver_irq_uninstall(struct drm_device *dev)
{
 drm_via_private_t *dev_priv = (drm_via_private_t *) dev->dev_private;
 u32 status;

 DRM_DEBUG("\n");
 if (dev_priv) {



  VIA_WRITE8(0x83d4, 0x11);
  VIA_WRITE8(0x83d5, VIA_READ8(0x83d5) & ~0x30);

  status = VIA_READ(VIA_REG_INTERRUPT);
  VIA_WRITE(VIA_REG_INTERRUPT, status &
     ~(VIA_IRQ_VBLANK_ENABLE | dev_priv->irq_enable_mask));
 }
}
