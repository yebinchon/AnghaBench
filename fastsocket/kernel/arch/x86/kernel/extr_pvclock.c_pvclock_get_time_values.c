
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvclock_vcpu_time_info {int version; int flags; int tsc_shift; int tsc_to_system_mul; int system_time; int tsc_timestamp; } ;
struct pvclock_shadow_time {int version; int flags; int tsc_shift; int tsc_to_nsec_mul; int system_timestamp; int tsc_timestamp; } ;


 int rmb () ;

__attribute__((used)) static unsigned pvclock_get_time_values(struct pvclock_shadow_time *dst,
     struct pvclock_vcpu_time_info *src)
{
 do {
  dst->version = src->version;
  rmb();
  dst->tsc_timestamp = src->tsc_timestamp;
  dst->system_timestamp = src->system_time;
  dst->tsc_to_nsec_mul = src->tsc_to_system_mul;
  dst->tsc_shift = src->tsc_shift;
  dst->flags = src->flags;
  rmb();
 } while ((src->version & 1) || (dst->version != src->version));

 return dst->version;
}
