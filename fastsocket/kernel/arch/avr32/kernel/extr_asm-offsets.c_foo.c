
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BLANK () ;
 int MM_pgd ;
 int OFFSET (int ,int ,int ) ;
 int TI_cpu ;
 int TI_exec_domain ;
 int TI_flags ;
 int TI_preempt_count ;
 int TI_rar_saved ;
 int TI_restart_block ;
 int TI_rsr_saved ;
 int TI_task ;
 int TSK_active_mm ;
 int active_mm ;
 int cpu ;
 int exec_domain ;
 int flags ;
 int mm_struct ;
 int pgd ;
 int preempt_count ;
 int rar_saved ;
 int restart_block ;
 int rsr_saved ;
 int task ;
 int task_struct ;
 int thread_info ;

void foo(void)
{
 OFFSET(TI_task, thread_info, task);
 OFFSET(TI_exec_domain, thread_info, exec_domain);
 OFFSET(TI_flags, thread_info, flags);
 OFFSET(TI_cpu, thread_info, cpu);
 OFFSET(TI_preempt_count, thread_info, preempt_count);
 OFFSET(TI_rar_saved, thread_info, rar_saved);
 OFFSET(TI_rsr_saved, thread_info, rsr_saved);
 OFFSET(TI_restart_block, thread_info, restart_block);
 BLANK();
 OFFSET(TSK_active_mm, task_struct, active_mm);
 BLANK();
 OFFSET(MM_pgd, mm_struct, pgd);
}
