
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;


 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

unsigned long cmpxchg_386_u16(volatile void *ptr, u16 old, u16 new)
{
 u16 prev;
 unsigned long flags;


 local_irq_save(flags);
 prev = *(u16 *)ptr;
 if (prev == old)
  *(u16 *)ptr = new;
 local_irq_restore(flags);
 return prev;
}
