
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PARAVIRT_LAZY_MMU ;
 int arch_enter_lazy_mmu_mode () ;
 int arch_leave_lazy_mmu_mode () ;
 scalar_t__ paravirt_get_lazy_mode () ;
 int preempt_disable () ;
 int preempt_enable () ;

void arch_flush_lazy_mmu_mode(void)
{
 preempt_disable();

 if (paravirt_get_lazy_mode() == PARAVIRT_LAZY_MMU) {
  arch_leave_lazy_mmu_mode();
  arch_enter_lazy_mmu_mode();
 }

 preempt_enable();
}
