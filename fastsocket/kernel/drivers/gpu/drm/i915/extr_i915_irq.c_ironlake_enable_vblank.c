
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct drm_device {scalar_t__ dev_private; } ;
struct TYPE_3__ {int irq_lock; } ;
typedef TYPE_1__ drm_i915_private_t ;


 int DE_PIPEA_VBLANK ;
 int DE_PIPEB_VBLANK ;
 int EINVAL ;
 int i915_pipe_enabled (struct drm_device*,int) ;
 int ironlake_enable_display_irq (TYPE_1__*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ironlake_enable_vblank(struct drm_device *dev, int pipe)
{
 drm_i915_private_t *dev_priv = (drm_i915_private_t *) dev->dev_private;
 unsigned long irqflags;

 if (!i915_pipe_enabled(dev, pipe))
  return -EINVAL;

 spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
 ironlake_enable_display_irq(dev_priv, (pipe == 0) ?
        DE_PIPEA_VBLANK : DE_PIPEB_VBLANK);
 spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);

 return 0;
}
