
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_i915_private {TYPE_1__* info; } ;
struct TYPE_2__ {int gen; } ;


 unsigned long __i915_chipset_val (struct drm_i915_private*) ;
 int mchdev_lock ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

unsigned long i915_chipset_val(struct drm_i915_private *dev_priv)
{
 unsigned long val;

 if (dev_priv->info->gen != 5)
  return 0;

 spin_lock_irq(&mchdev_lock);

 val = __i915_chipset_val(dev_priv);

 spin_unlock_irq(&mchdev_lock);

 return val;
}
