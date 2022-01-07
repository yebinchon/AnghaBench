
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sp; } ;
struct task_struct {TYPE_1__ thread; } ;
struct pt_regs {int dummy; } ;


 scalar_t__ IRQ_STACK_SIZE ;
 int STACKSLOTS_PER_LINE ;
 int THREAD_SIZE ;
 int irq_stack_ptr ;
 int kstack_depth_to_print ;
 scalar_t__ per_cpu (int ,int) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int printk (char*,...) ;
 int show_trace_log_lvl (struct task_struct*,struct pt_regs*,unsigned long*,char*) ;
 int smp_processor_id () ;
 int touch_nmi_watchdog () ;

void
show_stack_log_lvl(struct task_struct *task, struct pt_regs *regs,
     unsigned long *sp, char *log_lvl)
{
 unsigned long *irq_stack_end;
 unsigned long *irq_stack;
 unsigned long *stack;
 int cpu;
 int i;

 preempt_disable();
 cpu = smp_processor_id();

 irq_stack_end = (unsigned long *)(per_cpu(irq_stack_ptr, cpu));
 irq_stack = (unsigned long *)(per_cpu(irq_stack_ptr, cpu) - IRQ_STACK_SIZE);





 if (sp == ((void*)0)) {
  if (task)
   sp = (unsigned long *)task->thread.sp;
  else
   sp = (unsigned long *)&sp;
 }

 stack = sp;
 for (i = 0; i < kstack_depth_to_print; i++) {
  if (stack >= irq_stack && stack <= irq_stack_end) {
   if (stack == irq_stack_end) {
    stack = (unsigned long *) (irq_stack_end[-1]);
    printk(" <EOI> ");
   }
  } else {
  if (((long) stack & (THREAD_SIZE-1)) == 0)
   break;
  }
  if (i && ((i % STACKSLOTS_PER_LINE) == 0))
   printk("\n%s", log_lvl);
  printk(" %016lx", *stack++);
  touch_nmi_watchdog();
 }
 preempt_enable();

 printk("\n");
 show_trace_log_lvl(task, regs, sp, log_lvl);
}
