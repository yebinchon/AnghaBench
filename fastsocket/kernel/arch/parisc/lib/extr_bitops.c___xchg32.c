
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _atomic_spin_lock_irqsave (int*,unsigned long) ;
 int _atomic_spin_unlock_irqrestore (int*,unsigned long) ;

unsigned long __xchg32(int x, int *ptr)
{
 unsigned long flags;
 long temp;

 _atomic_spin_lock_irqsave(ptr, flags);
 temp = (long) *ptr;
 *ptr = x;
 _atomic_spin_unlock_irqrestore(ptr, flags);
 return (unsigned long)temp;
}
