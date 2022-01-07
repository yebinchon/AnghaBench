
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 unsigned long __i915_chipset_val (struct drm_i915_private*) ;
 unsigned long __i915_gfx_val (struct drm_i915_private*) ;
 struct drm_i915_private* i915_mch_dev ;
 int mchdev_lock ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

unsigned long i915_read_mch_val(void)
{
 struct drm_i915_private *dev_priv;
 unsigned long chipset_val, graphics_val, ret = 0;

 spin_lock_irq(&mchdev_lock);
 if (!i915_mch_dev)
  goto out_unlock;
 dev_priv = i915_mch_dev;

 chipset_val = __i915_chipset_val(dev_priv);
 graphics_val = __i915_gfx_val(dev_priv);

 ret = chipset_val + graphics_val;

out_unlock:
 spin_unlock_irq(&mchdev_lock);

 return ret;
}
