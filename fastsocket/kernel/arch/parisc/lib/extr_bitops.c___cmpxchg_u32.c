
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _atomic_spin_lock_irqsave (unsigned int volatile*,unsigned long) ;
 int _atomic_spin_unlock_irqrestore (unsigned int volatile*,unsigned long) ;

unsigned long __cmpxchg_u32(volatile unsigned int *ptr, unsigned int old, unsigned int new)
{
 unsigned long flags;
 unsigned int prev;

 _atomic_spin_lock_irqsave(ptr, flags);
 if ((prev = *ptr) == old)
  *ptr = new;
 _atomic_spin_unlock_irqrestore(ptr, flags);
 return (unsigned long)prev;
}
