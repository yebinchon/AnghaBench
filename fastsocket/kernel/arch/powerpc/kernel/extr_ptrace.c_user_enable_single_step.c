
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dbcr0; struct pt_regs* regs; } ;
struct task_struct {TYPE_1__ thread; } ;
struct pt_regs {int msr; } ;


 int DBCR0_BT ;
 int DBCR0_IC ;
 int DBCR0_IDM ;
 int MSR_BE ;
 int MSR_DE ;
 int MSR_SE ;
 int TIF_SINGLESTEP ;
 int set_tsk_thread_flag (struct task_struct*,int ) ;

void user_enable_single_step(struct task_struct *task)
{
 struct pt_regs *regs = task->thread.regs;

 if (regs != ((void*)0)) {





  regs->msr &= ~MSR_BE;
  regs->msr |= MSR_SE;

 }
 set_tsk_thread_flag(task, TIF_SINGLESTEP);
}
