
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* force_wake_put ) (struct drm_i915_private*) ;int (* force_wake_get ) (struct drm_i915_private*) ;} ;
struct drm_i915_private {int gt_fifo_count; int gt_lock; TYPE_1__ gt; scalar_t__ forcewake_count; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int GEN6_GDRST ;
 int GEN6_GRDOM_FULL ;
 int GT_FIFO_FREE_ENTRIES ;
 int I915_READ_NOTRACE (int ) ;
 int I915_WRITE_NOTRACE (int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct drm_i915_private*) ;
 int stub2 (struct drm_i915_private*) ;
 int wait_for (int,int) ;

__attribute__((used)) static int gen6_do_reset(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 int ret;
 unsigned long irqflags;




 spin_lock_irqsave(&dev_priv->gt_lock, irqflags);







 I915_WRITE_NOTRACE(GEN6_GDRST, GEN6_GRDOM_FULL);


 ret = wait_for((I915_READ_NOTRACE(GEN6_GDRST) & GEN6_GRDOM_FULL) == 0, 500);


 if (dev_priv->forcewake_count)
  dev_priv->gt.force_wake_get(dev_priv);
 else
  dev_priv->gt.force_wake_put(dev_priv);


 dev_priv->gt_fifo_count = I915_READ_NOTRACE(GT_FIFO_FREE_ENTRIES);

 spin_unlock_irqrestore(&dev_priv->gt_lock, irqflags);
 return ret;
}
