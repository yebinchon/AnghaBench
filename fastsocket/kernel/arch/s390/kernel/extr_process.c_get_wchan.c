
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long ksp; } ;
struct task_struct {scalar_t__ state; TYPE_1__ thread; } ;
struct stack_frame {unsigned long back_chain; unsigned long* gprs; } ;


 unsigned long PSW_ADDR_INSN ;
 scalar_t__ TASK_RUNNING ;
 struct task_struct* current ;
 int in_sched_functions (unsigned long) ;
 scalar_t__ task_pt_regs (struct task_struct*) ;
 struct stack_frame* task_stack_page (struct task_struct*) ;

unsigned long get_wchan(struct task_struct *p)
{
 struct stack_frame *sf, *low, *high;
 unsigned long return_address;
 int count;

 if (!p || p == current || p->state == TASK_RUNNING || !task_stack_page(p))
  return 0;
 low = task_stack_page(p);
 high = (struct stack_frame *) task_pt_regs(p);
 sf = (struct stack_frame *) (p->thread.ksp & PSW_ADDR_INSN);
 if (sf <= low || sf > high)
  return 0;
 for (count = 0; count < 16; count++) {
  sf = (struct stack_frame *) (sf->back_chain & PSW_ADDR_INSN);
  if (sf <= low || sf > high)
   return 0;
  return_address = sf->gprs[8] & PSW_ADDR_INSN;
  if (!in_sched_functions(return_address))
   return return_address;
 }
 return 0;
}
