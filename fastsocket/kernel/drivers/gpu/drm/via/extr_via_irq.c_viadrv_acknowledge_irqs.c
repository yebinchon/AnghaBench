
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int irq_pending_mask; } ;
typedef TYPE_1__ drm_via_private_t ;


 int VIA_READ (int ) ;
 int VIA_REG_INTERRUPT ;
 int VIA_WRITE (int ,int) ;

__attribute__((used)) static __inline__ void viadrv_acknowledge_irqs(drm_via_private_t *dev_priv)
{
 u32 status;

 if (dev_priv) {

  status = VIA_READ(VIA_REG_INTERRUPT);
  VIA_WRITE(VIA_REG_INTERRUPT, status |
     dev_priv->irq_pending_mask);
 }
}
