
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct ia64_psr {scalar_t__ tb; scalar_t__ ss; } ;


 int TIF_SINGLESTEP ;
 int clear_tsk_thread_flag (struct task_struct*,int ) ;
 struct ia64_psr* ia64_psr (int ) ;
 int task_pt_regs (struct task_struct*) ;

void
user_disable_single_step (struct task_struct *child)
{
 struct ia64_psr *child_psr = ia64_psr(task_pt_regs(child));


 clear_tsk_thread_flag(child, TIF_SINGLESTEP);
 child_psr->ss = 0;
 child_psr->tb = 0;
}
