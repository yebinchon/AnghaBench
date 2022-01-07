
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* force_wake_get ) (struct drm_i915_private*) ;} ;
struct drm_i915_private {int gt_lock; TYPE_1__ gt; int forcewake_count; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct drm_i915_private*) ;

void gen6_gt_force_wake_get(struct drm_i915_private *dev_priv)
{
 unsigned long irqflags;

 spin_lock_irqsave(&dev_priv->gt_lock, irqflags);
 if (dev_priv->forcewake_count++ == 0)
  dev_priv->gt.force_wake_get(dev_priv);
 spin_unlock_irqrestore(&dev_priv->gt_lock, irqflags);
}
