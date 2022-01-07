
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_i915_private {TYPE_1__* info; } ;
struct TYPE_2__ {int gen; } ;


 int __i915_update_gfx_val (struct drm_i915_private*) ;
 int mchdev_lock ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void i915_update_gfx_val(struct drm_i915_private *dev_priv)
{
 if (dev_priv->info->gen != 5)
  return;

 spin_lock_irq(&mchdev_lock);

 __i915_update_gfx_val(dev_priv);

 spin_unlock_irq(&mchdev_lock);
}
