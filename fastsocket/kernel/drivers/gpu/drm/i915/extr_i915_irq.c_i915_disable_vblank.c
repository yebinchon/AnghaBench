
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_device {scalar_t__ dev_private; } ;
struct TYPE_5__ {int irq_lock; TYPE_1__* info; } ;
typedef TYPE_2__ drm_i915_private_t ;
struct TYPE_4__ {int gen; } ;


 int I915_WRITE (int ,int ) ;
 int INSTPM ;
 int INSTPM_AGPBUSY_DIS ;
 int PIPE_START_VBLANK_INTERRUPT_ENABLE ;
 int PIPE_VBLANK_INTERRUPT_ENABLE ;
 int _MASKED_BIT_ENABLE (int ) ;
 int i915_disable_pipestat (TYPE_2__*,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void i915_disable_vblank(struct drm_device *dev, int pipe)
{
 drm_i915_private_t *dev_priv = (drm_i915_private_t *) dev->dev_private;
 unsigned long irqflags;

 spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
 if (dev_priv->info->gen == 3)
  I915_WRITE(INSTPM, _MASKED_BIT_ENABLE(INSTPM_AGPBUSY_DIS));

 i915_disable_pipestat(dev_priv, pipe,
         PIPE_VBLANK_INTERRUPT_ENABLE |
         PIPE_START_VBLANK_INTERRUPT_ENABLE);
 spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
}
