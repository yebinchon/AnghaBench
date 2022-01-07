
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

unsigned long cmpxchg_386_u32(volatile void *ptr, u32 old, u32 new)
{
 u32 prev;
 unsigned long flags;


 local_irq_save(flags);
 prev = *(u32 *)ptr;
 if (prev == old)
  *(u32 *)ptr = new;
 local_irq_restore(flags);
 return prev;
}
