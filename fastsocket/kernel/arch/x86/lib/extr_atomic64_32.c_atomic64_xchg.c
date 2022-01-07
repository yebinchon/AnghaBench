
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int atomic64_t ;


 scalar_t__ atomic64_cmpxchg (int *,scalar_t__,scalar_t__) ;

u64 atomic64_xchg(atomic64_t *ptr, u64 new_val)
{







 u64 old_val, real_val = 0;

 do {
  old_val = real_val;

  real_val = atomic64_cmpxchg(ptr, old_val, new_val);

 } while (real_val != old_val);

 return old_val;
}
