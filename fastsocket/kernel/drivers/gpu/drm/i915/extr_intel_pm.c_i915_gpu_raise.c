
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ max_delay; scalar_t__ fmax; } ;
struct drm_i915_private {TYPE_1__ ips; } ;


 struct drm_i915_private* i915_mch_dev ;
 int mchdev_lock ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

bool i915_gpu_raise(void)
{
 struct drm_i915_private *dev_priv;
 bool ret = 1;

 spin_lock_irq(&mchdev_lock);
 if (!i915_mch_dev) {
  ret = 0;
  goto out_unlock;
 }
 dev_priv = i915_mch_dev;

 if (dev_priv->ips.max_delay > dev_priv->ips.fmax)
  dev_priv->ips.max_delay--;

out_unlock:
 spin_unlock_irq(&mchdev_lock);

 return ret;
}
