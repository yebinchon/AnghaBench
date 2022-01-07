
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int BUG_ON (int ) ;
 int PARAVIRT_LAZY_CPU ;
 int TIF_LAZY_MMU_UPDATES ;
 int arch_enter_lazy_mmu_mode () ;
 int leave_lazy (int ) ;
 int preemptible () ;
 int task_thread_info (struct task_struct*) ;
 scalar_t__ test_and_clear_ti_thread_flag (int ,int ) ;

void paravirt_end_context_switch(struct task_struct *next)
{
 BUG_ON(preemptible());

 leave_lazy(PARAVIRT_LAZY_CPU);

 if (test_and_clear_ti_thread_flag(task_thread_info(next), TIF_LAZY_MMU_UPDATES))
  arch_enter_lazy_mmu_mode();
}
