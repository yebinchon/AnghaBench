
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_2__ {int swi_emitted; } ;
typedef TYPE_1__ drm_radeon_private_t ;


 int ADVANCE_RING () ;
 int BEGIN_RING (int) ;
 int COMMIT_RING () ;
 int OUT_RING_REG (int ,unsigned int) ;
 int RADEON_GEN_INT_STATUS ;
 int RADEON_LAST_SWI_REG ;
 unsigned int RADEON_SW_INT_FIRE ;
 int RING_LOCALS ;
 int atomic_inc (int *) ;
 unsigned int atomic_read (int *) ;

__attribute__((used)) static int radeon_emit_irq(struct drm_device * dev)
{
 drm_radeon_private_t *dev_priv = dev->dev_private;
 unsigned int ret;
 RING_LOCALS;

 atomic_inc(&dev_priv->swi_emitted);
 ret = atomic_read(&dev_priv->swi_emitted);

 BEGIN_RING(4);
 OUT_RING_REG(RADEON_LAST_SWI_REG, ret);
 OUT_RING_REG(RADEON_GEN_INT_STATUS, RADEON_SW_INT_FIRE);
 ADVANCE_RING();
 COMMIT_RING();

 return ret;
}
