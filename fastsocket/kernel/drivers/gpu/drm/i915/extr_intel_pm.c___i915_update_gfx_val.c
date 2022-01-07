
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct timespec {int tv_sec; int tv_nsec; } ;
struct TYPE_2__ {scalar_t__ last_count2; int gfx_power; struct timespec last_time2; } ;
struct drm_i915_private {TYPE_1__ ips; } ;


 int GFXEC ;
 scalar_t__ I915_READ (int ) ;
 int assert_spin_locked (int *) ;
 int div_u64 (int,unsigned long) ;
 int getrawmonotonic (struct timespec*) ;
 int mchdev_lock ;
 struct timespec timespec_sub (struct timespec,struct timespec) ;

__attribute__((used)) static void __i915_update_gfx_val(struct drm_i915_private *dev_priv)
{
 struct timespec now, diff1;
 u64 diff;
 unsigned long diffms;
 u32 count;

 assert_spin_locked(&mchdev_lock);

 getrawmonotonic(&now);
 diff1 = timespec_sub(now, dev_priv->ips.last_time2);


 diffms = diff1.tv_sec * 1000 + diff1.tv_nsec / 1000000;
 if (!diffms)
  return;

 count = I915_READ(GFXEC);

 if (count < dev_priv->ips.last_count2) {
  diff = ~0UL - dev_priv->ips.last_count2;
  diff += count;
 } else {
  diff = count - dev_priv->ips.last_count2;
 }

 dev_priv->ips.last_count2 = count;
 dev_priv->ips.last_time2 = now;


 diff = diff * 1181;
 diff = div_u64(diff, diffms * 10);
 dev_priv->ips.gfx_power = diff;
}
