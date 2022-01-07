
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long sp; unsigned long lr; } ;
struct task_struct {TYPE_1__ thread; scalar_t__ pid; } ;
struct pt_regs {unsigned long spu; scalar_t__ r0; } ;


 struct pt_regs* task_pt_regs (struct task_struct*) ;

int copy_thread(unsigned long clone_flags, unsigned long spu,
 unsigned long unused, struct task_struct *tsk, struct pt_regs *regs)
{
 struct pt_regs *childregs = task_pt_regs(tsk);
 extern void ret_from_fork(void);


 *childregs = *regs;

 childregs->spu = spu;
 childregs->r0 = 0;
 regs->r0 = tsk->pid;
 tsk->thread.sp = (unsigned long)childregs;
 tsk->thread.lr = (unsigned long)ret_from_fork;

 return 0;
}
