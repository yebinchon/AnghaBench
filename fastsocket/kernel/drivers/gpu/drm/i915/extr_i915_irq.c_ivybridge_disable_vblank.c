
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct drm_device {scalar_t__ dev_private; } ;
struct TYPE_3__ {int irq_lock; } ;
typedef TYPE_1__ drm_i915_private_t ;


 int DE_PIPEA_VBLANK_IVB ;
 int ironlake_disable_display_irq (TYPE_1__*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ivybridge_disable_vblank(struct drm_device *dev, int pipe)
{
 drm_i915_private_t *dev_priv = (drm_i915_private_t *) dev->dev_private;
 unsigned long irqflags;

 spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
 ironlake_disable_display_irq(dev_priv,
         DE_PIPEA_VBLANK_IVB << (pipe * 5));
 spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
}
