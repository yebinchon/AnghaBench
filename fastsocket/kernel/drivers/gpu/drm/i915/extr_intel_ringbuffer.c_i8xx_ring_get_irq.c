
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_ring_buffer {int irq_enable_mask; int irq_refcount; struct drm_device* dev; } ;
struct drm_device {int irq_enabled; TYPE_1__* dev_private; } ;
struct TYPE_2__ {int irq_lock; int irq_mask; } ;
typedef TYPE_1__ drm_i915_private_t ;


 int I915_WRITE16 (int ,int ) ;
 int IMR ;
 int POSTING_READ16 (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static bool
i8xx_ring_get_irq(struct intel_ring_buffer *ring)
{
 struct drm_device *dev = ring->dev;
 drm_i915_private_t *dev_priv = dev->dev_private;
 unsigned long flags;

 if (!dev->irq_enabled)
  return 0;

 spin_lock_irqsave(&dev_priv->irq_lock, flags);
 if (ring->irq_refcount++ == 0) {
  dev_priv->irq_mask &= ~ring->irq_enable_mask;
  I915_WRITE16(IMR, dev_priv->irq_mask);
  POSTING_READ16(IMR);
 }
 spin_unlock_irqrestore(&dev_priv->irq_lock, flags);

 return 1;
}
