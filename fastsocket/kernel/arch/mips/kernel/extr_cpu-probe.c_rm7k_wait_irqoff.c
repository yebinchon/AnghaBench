
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int need_resched () ;

__attribute__((used)) static void rm7k_wait_irqoff(void)
{
 local_irq_disable();
 if (!need_resched())
  __asm__(
  "	.set	push					\n"
  "	.set	mips3					\n"
  "	.set	noat					\n"
  "	mfc0	$1, $12					\n"
  "	sync						\n"
  "	mtc0	$1, $12		# stalls until W stage	\n"
  "	wait						\n"
  "	mtc0	$1, $12		# stalls until W stage	\n"
  "	.set	pop					\n");
 local_irq_enable();
}
