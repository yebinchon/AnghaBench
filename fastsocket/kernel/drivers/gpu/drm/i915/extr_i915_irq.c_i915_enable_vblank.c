
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct drm_device {scalar_t__ dev_private; } ;
struct TYPE_6__ {int irq_lock; TYPE_1__* info; } ;
typedef TYPE_2__ drm_i915_private_t ;
struct TYPE_7__ {int gen; } ;
struct TYPE_5__ {int gen; } ;


 int EINVAL ;
 int I915_WRITE (int ,int ) ;
 int INSTPM ;
 int INSTPM_AGPBUSY_DIS ;
 TYPE_4__* INTEL_INFO (struct drm_device*) ;
 int PIPE_START_VBLANK_INTERRUPT_ENABLE ;
 int PIPE_VBLANK_INTERRUPT_ENABLE ;
 int _MASKED_BIT_DISABLE (int ) ;
 int i915_enable_pipestat (TYPE_2__*,int,int ) ;
 int i915_pipe_enabled (struct drm_device*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int i915_enable_vblank(struct drm_device *dev, int pipe)
{
 drm_i915_private_t *dev_priv = (drm_i915_private_t *) dev->dev_private;
 unsigned long irqflags;

 if (!i915_pipe_enabled(dev, pipe))
  return -EINVAL;

 spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
 if (INTEL_INFO(dev)->gen >= 4)
  i915_enable_pipestat(dev_priv, pipe,
         PIPE_START_VBLANK_INTERRUPT_ENABLE);
 else
  i915_enable_pipestat(dev_priv, pipe,
         PIPE_VBLANK_INTERRUPT_ENABLE);


 if (dev_priv->info->gen == 3)
  I915_WRITE(INSTPM, _MASKED_BIT_DISABLE(INSTPM_AGPBUSY_DIS));
 spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);

 return 0;
}
