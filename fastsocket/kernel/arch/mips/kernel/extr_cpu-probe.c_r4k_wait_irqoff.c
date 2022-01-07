
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int need_resched () ;

void r4k_wait_irqoff(void)
{
 local_irq_disable();
 if (!need_resched())
  __asm__("	.set	push		\n"
   "	.set	mips3		\n"
   "	wait			\n"
   "	.set	pop		\n");
 local_irq_enable();
 __asm__(" 	.globl __pastwait	\n"
  "__pastwait:			\n");
 return;
}
