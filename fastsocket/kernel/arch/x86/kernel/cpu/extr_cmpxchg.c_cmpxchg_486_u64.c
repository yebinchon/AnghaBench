
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

unsigned long long cmpxchg_486_u64(volatile void *ptr, u64 old, u64 new)
{
 u64 prev;
 unsigned long flags;


 local_irq_save(flags);
 prev = *(u64 *)ptr;
 if (prev == old)
  *(u64 *)ptr = new;
 local_irq_restore(flags);
 return prev;
}
