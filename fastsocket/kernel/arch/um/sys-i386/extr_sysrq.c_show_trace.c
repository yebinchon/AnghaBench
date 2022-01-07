
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_info {int dummy; } ;
struct task_struct {int dummy; } ;


 scalar_t__ KSTK_EBP (struct task_struct*) ;
 int THREAD_SIZE ;
 int WARN_ON (int) ;
 struct task_struct* current ;
 int print_context_stack (struct thread_info*,unsigned long*,unsigned long) ;
 int printk (char*) ;

void show_trace(struct task_struct* task, unsigned long * stack)
{
 unsigned long ebp;
 struct thread_info *context;


 if (!stack) {
  stack = (unsigned long*) &stack;
  printk("show_trace: got NULL stack, implicit assumption task == current");
  WARN_ON(1);
 }

 if (!task)
  task = current;

 if (task != current) {
  ebp = (unsigned long) KSTK_EBP(task);
 } else {
  asm ("movl %%ebp, %0" : "=r" (ebp) : );
 }

 context = (struct thread_info *)
  ((unsigned long)stack & (~(THREAD_SIZE - 1)));
 print_context_stack(context, stack, ebp);

 printk("\n");
}
