
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct pt_regs {int dummy; } ;


 int dump_trace (struct task_struct*,struct pt_regs*,unsigned long*,int *,char*) ;
 int print_trace_ops ;
 int printk (char*,char*) ;

void
show_trace_log_lvl(struct task_struct *task, struct pt_regs *regs,
  unsigned long *stack, char *log_lvl)
{
 printk("%sCall Trace:\n", log_lvl);
 dump_trace(task, regs, stack, &print_trace_ops, log_lvl);
}
