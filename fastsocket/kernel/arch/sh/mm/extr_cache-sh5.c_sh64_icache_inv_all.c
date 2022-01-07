
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long long ICCR0 ;
 unsigned long long ICCR0_ICI ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static inline void sh64_icache_inv_all(void)
{
 unsigned long long addr, flag, data;
 unsigned long flags;

 addr = ICCR0;
 flag = ICCR0_ICI;
 data = 0;


 local_irq_save(flags);


 __asm__ __volatile__ (
  "getcfg	%3, 0, %0\n\t"
  "or	%0, %2, %0\n\t"
  "putcfg	%3, 0, %0\n\t"
  "synci"
  : "=&r" (data)
  : "0" (data), "r" (flag), "r" (addr));

 local_irq_restore(flags);
}
