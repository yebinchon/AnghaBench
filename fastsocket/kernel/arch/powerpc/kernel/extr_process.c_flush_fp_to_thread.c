
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* regs; } ;
struct task_struct {TYPE_2__ thread; } ;
struct TYPE_3__ {int msr; } ;


 int BUG_ON (int) ;
 int MSR_FP ;
 struct task_struct* current ;
 int giveup_fpu (struct task_struct*) ;
 int preempt_disable () ;
 int preempt_enable () ;

void flush_fp_to_thread(struct task_struct *tsk)
{
 if (tsk->thread.regs) {
  preempt_disable();
  if (tsk->thread.regs->msr & MSR_FP) {
   giveup_fpu(tsk);
  }
  preempt_enable();
 }
}
