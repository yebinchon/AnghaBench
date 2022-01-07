
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sp; } ;
struct task_struct {TYPE_1__ thread; } ;
struct pt_regs {int dummy; } ;


 int STACKSLOTS_PER_LINE ;
 int kstack_depth_to_print ;
 scalar_t__ kstack_end (unsigned long*) ;
 int printk (char*,...) ;
 int show_trace_log_lvl (struct task_struct*,struct pt_regs*,unsigned long*,char*) ;
 int touch_nmi_watchdog () ;

void
show_stack_log_lvl(struct task_struct *task, struct pt_regs *regs,
     unsigned long *sp, char *log_lvl)
{
 unsigned long *stack;
 int i;

 if (sp == ((void*)0)) {
  if (task)
   sp = (unsigned long *)task->thread.sp;
  else
   sp = (unsigned long *)&sp;
 }

 stack = sp;
 for (i = 0; i < kstack_depth_to_print; i++) {
  if (kstack_end(stack))
   break;
  if (i && ((i % STACKSLOTS_PER_LINE) == 0))
   printk("\n%s", log_lvl);
  printk(" %08lx", *stack++);
  touch_nmi_watchdog();
 }
 printk("\n");
 show_trace_log_lvl(task, regs, sp, log_lvl);
}
