
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 struct drm_i915_private* i915_mch_dev ;
 int ips_ping_for_i915_load () ;
 int mchdev_lock ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void intel_gpu_ips_init(struct drm_i915_private *dev_priv)
{


 spin_lock_irq(&mchdev_lock);
 i915_mch_dev = dev_priv;
 spin_unlock_irq(&mchdev_lock);

 ips_ping_for_i915_load();
}
