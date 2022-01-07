
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct pt_regs {int dummy; } ;


 int show_trace_log_lvl (struct task_struct*,struct pt_regs*,unsigned long*,char*) ;

void show_trace(struct task_struct *task, struct pt_regs *regs,
  unsigned long *stack)
{
 show_trace_log_lvl(task, regs, stack, "");
}
