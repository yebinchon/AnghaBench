
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int * dbr; } ;
struct task_struct {TYPE_1__ thread; } ;


 int IA64_THREAD_DBG_VALID ;
 int IA64_THREAD_PM_VALID ;
 scalar_t__ IS_IA32_PROCESS (int ) ;
 unsigned long PFM_CPUINFO_SYST_WIDE ;
 unsigned long __get_cpu_var (int ) ;
 int ia32_load_state (struct task_struct*) ;
 int ia64_load_debug_regs (int *) ;
 int pfm_load_regs (struct task_struct*) ;
 int pfm_syst_info ;
 int pfm_syst_wide_update_task (struct task_struct*,unsigned long,int) ;
 int task_pt_regs (struct task_struct*) ;

void
ia64_load_extra (struct task_struct *task)
{




 if ((task->thread.flags & IA64_THREAD_DBG_VALID) != 0)
  ia64_load_debug_regs(&task->thread.dbr[0]);
}
