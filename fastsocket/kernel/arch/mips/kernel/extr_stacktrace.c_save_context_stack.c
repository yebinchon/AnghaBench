
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct stack_trace {scalar_t__ skip; unsigned long* entries; scalar_t__ nr_entries; scalar_t__ max_entries; } ;
struct pt_regs {unsigned long* regs; unsigned long cp0_epc; } ;


 unsigned long THREAD_SIZE ;
 int __kernel_text_address (unsigned long) ;
 scalar_t__ raw_show_trace ;
 int save_raw_context_stack (struct stack_trace*,unsigned long) ;
 scalar_t__ task_stack_page (struct task_struct*) ;
 unsigned long unwind_stack (struct task_struct*,unsigned long*,unsigned long,unsigned long*) ;

__attribute__((used)) static void save_context_stack(struct stack_trace *trace,
 struct task_struct *tsk, struct pt_regs *regs)
{
 unsigned long sp = regs->regs[29];
 save_raw_context_stack(trace, sp);

}
