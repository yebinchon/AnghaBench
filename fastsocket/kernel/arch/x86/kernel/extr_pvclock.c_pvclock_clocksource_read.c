
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct pvclock_vcpu_time_info {unsigned int version; } ;
struct pvclock_shadow_time {scalar_t__ system_timestamp; int flags; } ;
typedef scalar_t__ cycle_t ;


 int PVCLOCK_TSC_STABLE_BIT ;
 scalar_t__ atomic64_cmpxchg (int *,scalar_t__,scalar_t__) ;
 scalar_t__ atomic64_read (int *) ;
 int barrier () ;
 int last_value ;
 scalar_t__ pvclock_get_nsec_offset (struct pvclock_shadow_time*) ;
 unsigned int pvclock_get_time_values (struct pvclock_shadow_time*,struct pvclock_vcpu_time_info*) ;
 scalar_t__ unlikely (int) ;
 int valid_flags ;

cycle_t pvclock_clocksource_read(struct pvclock_vcpu_time_info *src)
{
 struct pvclock_shadow_time shadow;
 unsigned version;
 cycle_t ret, offset;
 u64 last;

 do {
  version = pvclock_get_time_values(&shadow, src);
  barrier();
  offset = pvclock_get_nsec_offset(&shadow);
  ret = shadow.system_timestamp + offset;
  barrier();
 } while (version != src->version);

 if ((valid_flags & PVCLOCK_TSC_STABLE_BIT) &&
  (shadow.flags & PVCLOCK_TSC_STABLE_BIT))
  return ret;
 last = atomic64_read(&last_value);
 do {
  if (ret < last)
   return last;
  last = atomic64_cmpxchg(&last_value, last, ret);
 } while (unlikely(last != ret));

 return ret;
}
