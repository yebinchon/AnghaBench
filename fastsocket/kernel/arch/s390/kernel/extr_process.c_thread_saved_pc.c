
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ksp; } ;
struct task_struct {TYPE_1__ thread; } ;
struct stack_frame {int back_chain; unsigned long* gprs; } ;


 int PSW_ADDR_INSN ;
 scalar_t__ task_pt_regs (struct task_struct*) ;
 struct stack_frame* task_stack_page (struct task_struct*) ;

unsigned long thread_saved_pc(struct task_struct *tsk)
{
 struct stack_frame *sf, *low, *high;

 if (!tsk || !task_stack_page(tsk))
  return 0;
 low = task_stack_page(tsk);
 high = (struct stack_frame *) task_pt_regs(tsk);
 sf = (struct stack_frame *) (tsk->thread.ksp & PSW_ADDR_INSN);
 if (sf <= low || sf > high)
  return 0;
 sf = (struct stack_frame *) (sf->back_chain & PSW_ADDR_INSN);
 if (sf <= low || sf > high)
  return 0;
 return sf->gprs[8];
}
