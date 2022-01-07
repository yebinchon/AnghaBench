
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

unsigned long cmpxchg_386_u8(volatile void *ptr, u8 old, u8 new)
{
 u8 prev;
 unsigned long flags;


 local_irq_save(flags);
 prev = *(u8 *)ptr;
 if (prev == old)
  *(u8 *)ptr = new;
 local_irq_restore(flags);
 return prev;
}
