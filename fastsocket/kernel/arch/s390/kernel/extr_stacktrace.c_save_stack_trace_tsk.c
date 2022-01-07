
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long ksp; } ;
struct task_struct {TYPE_1__ thread; } ;
struct stack_trace {scalar_t__ nr_entries; scalar_t__ max_entries; int * entries; } ;


 unsigned long PSW_ADDR_INSN ;
 int ULONG_MAX ;
 int save_context_stack (struct stack_trace*,unsigned long,unsigned long,unsigned long,int ) ;
 scalar_t__ task_pt_regs (struct task_struct*) ;
 scalar_t__ task_stack_page (struct task_struct*) ;

void save_stack_trace_tsk(struct task_struct *tsk, struct stack_trace *trace)
{
 unsigned long sp, low, high;

 sp = tsk->thread.ksp & PSW_ADDR_INSN;
 low = (unsigned long) task_stack_page(tsk);
 high = (unsigned long) task_pt_regs(tsk);
 save_context_stack(trace, sp, low, high, 0);
 if (trace->nr_entries < trace->max_entries)
  trace->entries[trace->nr_entries++] = ULONG_MAX;
}
