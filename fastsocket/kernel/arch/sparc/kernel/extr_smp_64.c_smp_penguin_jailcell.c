
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int clear_softint (int) ;
 int membar_safe (char*) ;
 scalar_t__ penguins_are_doing_time ;
 int preempt_disable () ;
 int preempt_enable () ;
 int prom_world (int) ;
 int rmb () ;
 int smp_capture_registry ;

void smp_penguin_jailcell(int irq, struct pt_regs *regs)
{
 clear_softint(1 << irq);

 preempt_disable();

 __asm__ __volatile__("flushw");
 prom_world(1);
 atomic_inc(&smp_capture_registry);
 membar_safe("#StoreLoad");
 while (penguins_are_doing_time)
  rmb();
 atomic_dec(&smp_capture_registry);
 prom_world(0);

 preempt_enable();
}
