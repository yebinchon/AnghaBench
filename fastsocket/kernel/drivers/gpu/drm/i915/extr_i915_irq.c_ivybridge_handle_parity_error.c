
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_device {scalar_t__ dev_private; } ;
struct TYPE_3__ {int error_work; } ;
struct TYPE_4__ {TYPE_1__ l3_parity; int wq; int irq_lock; int gt_irq_mask; } ;
typedef TYPE_2__ drm_i915_private_t ;


 int GTIMR ;
 int GT_GEN7_L3_PARITY_ERROR_INTERRUPT ;
 int HAS_L3_GPU_CACHE (struct drm_device*) ;
 int I915_WRITE (int ,int ) ;
 int queue_work (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ivybridge_handle_parity_error(struct drm_device *dev)
{
 drm_i915_private_t *dev_priv = (drm_i915_private_t *) dev->dev_private;
 unsigned long flags;

 if (!HAS_L3_GPU_CACHE(dev))
  return;

 spin_lock_irqsave(&dev_priv->irq_lock, flags);
 dev_priv->gt_irq_mask |= GT_GEN7_L3_PARITY_ERROR_INTERRUPT;
 I915_WRITE(GTIMR, dev_priv->gt_irq_mask);
 spin_unlock_irqrestore(&dev_priv->irq_lock, flags);

 queue_work(dev_priv->wq, &dev_priv->l3_parity.error_work);
}
