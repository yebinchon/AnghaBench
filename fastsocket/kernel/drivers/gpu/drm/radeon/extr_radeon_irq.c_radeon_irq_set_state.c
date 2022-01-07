
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct drm_device {scalar_t__ irq_enabled; TYPE_1__* dev_private; } ;
struct TYPE_2__ {int irq_enable_reg; } ;
typedef TYPE_1__ drm_radeon_private_t ;


 int RADEON_GEN_INT_CNTL ;
 int RADEON_WRITE (int ,int ) ;

void radeon_irq_set_state(struct drm_device *dev, u32 mask, int state)
{
 drm_radeon_private_t *dev_priv = dev->dev_private;

 if (state)
  dev_priv->irq_enable_reg |= mask;
 else
  dev_priv->irq_enable_reg &= ~mask;

 if (dev->irq_enabled)
  RADEON_WRITE(RADEON_GEN_INT_CNTL, dev_priv->irq_enable_reg);
}
