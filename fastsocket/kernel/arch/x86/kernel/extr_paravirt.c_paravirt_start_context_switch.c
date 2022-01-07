
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int BUG_ON (int ) ;
 int PARAVIRT_LAZY_CPU ;
 scalar_t__ PARAVIRT_LAZY_MMU ;
 int TIF_LAZY_MMU_UPDATES ;
 int arch_leave_lazy_mmu_mode () ;
 int enter_lazy (int ) ;
 int paravirt_lazy_mode ;
 scalar_t__ percpu_read (int ) ;
 int preemptible () ;
 int set_ti_thread_flag (int ,int ) ;
 int task_thread_info (struct task_struct*) ;

void paravirt_start_context_switch(struct task_struct *prev)
{
 BUG_ON(preemptible());

 if (percpu_read(paravirt_lazy_mode) == PARAVIRT_LAZY_MMU) {
  arch_leave_lazy_mmu_mode();
  set_ti_thread_flag(task_thread_info(prev), TIF_LAZY_MMU_UPDATES);
 }
 enter_lazy(PARAVIRT_LAZY_CPU);
}
