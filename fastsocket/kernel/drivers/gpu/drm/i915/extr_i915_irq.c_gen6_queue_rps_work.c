
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int work; int lock; int pm_iir; } ;
struct drm_i915_private {TYPE_1__ rps; int wq; } ;


 int GEN6_PMIMR ;
 int I915_WRITE (int ,int ) ;
 int POSTING_READ (int ) ;
 int queue_work (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void gen6_queue_rps_work(struct drm_i915_private *dev_priv,
    u32 pm_iir)
{
 unsigned long flags;
 spin_lock_irqsave(&dev_priv->rps.lock, flags);
 dev_priv->rps.pm_iir |= pm_iir;
 I915_WRITE(GEN6_PMIMR, dev_priv->rps.pm_iir);
 POSTING_READ(GEN6_PMIMR);
 spin_unlock_irqrestore(&dev_priv->rps.lock, flags);

 queue_work(dev_priv->wq, &dev_priv->rps.work);
}
