
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int pid; } ;
struct TYPE_2__ {int sr; int pc; } ;


 int TIF_BREAKPOINT ;
 int TIF_SINGLE_STEP ;
 int pr_debug (char*,int ,int ,int ) ;
 int set_tsk_thread_flag (struct task_struct*,int ) ;
 TYPE_1__* task_pt_regs (struct task_struct*) ;

__attribute__((used)) static void ptrace_single_step(struct task_struct *tsk)
{
 pr_debug("ptrace_single_step: pid=%u, PC=0x%08lx, SR=0x%08lx\n",
   tsk->pid, task_pt_regs(tsk)->pc, task_pt_regs(tsk)->sr);
 set_tsk_thread_flag(tsk, TIF_BREAKPOINT);
 set_tsk_thread_flag(tsk, TIF_SINGLE_STEP);
}
