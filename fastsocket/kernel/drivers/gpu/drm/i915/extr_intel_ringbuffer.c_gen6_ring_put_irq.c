
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct intel_ring_buffer {scalar_t__ irq_refcount; scalar_t__ id; int irq_enable_mask; struct drm_device* dev; } ;
struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_3__ {int irq_lock; int gt_irq_mask; } ;
typedef TYPE_1__ drm_i915_private_t ;


 int GEN6_RENDER_L3_PARITY_ERROR ;
 int GTIMR ;
 scalar_t__ HAS_L3_GPU_CACHE (struct drm_device*) ;
 int I915_WRITE (int ,int ) ;
 int I915_WRITE_IMR (struct intel_ring_buffer*,int ) ;
 int POSTING_READ (int ) ;
 scalar_t__ RCS ;
 int gen6_gt_force_wake_put (TYPE_1__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
gen6_ring_put_irq(struct intel_ring_buffer *ring)
{
 struct drm_device *dev = ring->dev;
 drm_i915_private_t *dev_priv = dev->dev_private;
 unsigned long flags;

 spin_lock_irqsave(&dev_priv->irq_lock, flags);
 if (--ring->irq_refcount == 0) {
  if (HAS_L3_GPU_CACHE(dev) && ring->id == RCS)
   I915_WRITE_IMR(ring, ~GEN6_RENDER_L3_PARITY_ERROR);
  else
   I915_WRITE_IMR(ring, ~0);
  dev_priv->gt_irq_mask |= ring->irq_enable_mask;
  I915_WRITE(GTIMR, dev_priv->gt_irq_mask);
  POSTING_READ(GTIMR);
 }
 spin_unlock_irqrestore(&dev_priv->irq_lock, flags);

 gen6_gt_force_wake_put(dev_priv);
}
