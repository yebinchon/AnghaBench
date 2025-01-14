
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct TYPE_4__ {unsigned long last_time1; unsigned long chipset_power; scalar_t__ last_count1; scalar_t__ c_m; scalar_t__ r_t; } ;
struct drm_i915_private {TYPE_1__ ips; } ;
struct TYPE_5__ {scalar_t__ i; scalar_t__ t; scalar_t__ m; scalar_t__ c; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int CSIEC ;
 int DDREC ;
 int DMIEC ;
 scalar_t__ I915_READ (int ) ;
 int assert_spin_locked (int *) ;
 TYPE_2__* cparams ;
 scalar_t__ div_u64 (scalar_t__,int) ;
 int jiffies ;
 unsigned long jiffies_to_msecs (int ) ;
 int mchdev_lock ;

__attribute__((used)) static unsigned long __i915_chipset_val(struct drm_i915_private *dev_priv)
{
 u64 total_count, diff, ret;
 u32 count1, count2, count3, m = 0, c = 0;
 unsigned long now = jiffies_to_msecs(jiffies), diff1;
 int i;

 assert_spin_locked(&mchdev_lock);

 diff1 = now - dev_priv->ips.last_time1;






 if (diff1 <= 10)
  return dev_priv->ips.chipset_power;

 count1 = I915_READ(DMIEC);
 count2 = I915_READ(DDREC);
 count3 = I915_READ(CSIEC);

 total_count = count1 + count2 + count3;


 if (total_count < dev_priv->ips.last_count1) {
  diff = ~0UL - dev_priv->ips.last_count1;
  diff += total_count;
 } else {
  diff = total_count - dev_priv->ips.last_count1;
 }

 for (i = 0; i < ARRAY_SIZE(cparams); i++) {
  if (cparams[i].i == dev_priv->ips.c_m &&
      cparams[i].t == dev_priv->ips.r_t) {
   m = cparams[i].m;
   c = cparams[i].c;
   break;
  }
 }

 diff = div_u64(diff, diff1);
 ret = ((m * diff) + c);
 ret = div_u64(ret, 10);

 dev_priv->ips.last_count1 = total_count;
 dev_priv->ips.last_time1 = now;

 dev_priv->ips.chipset_power = ret;

 return ret;
}
