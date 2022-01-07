
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sp; } ;
struct task_struct {TYPE_1__ thread; } ;


 int kstack_depth_to_print ;
 scalar_t__ kstack_end (unsigned long*) ;
 int printk (char*,...) ;
 int show_trace (struct task_struct*,unsigned long*) ;

void show_stack(struct task_struct *task, unsigned long *sp)
{
 unsigned long *stack;
 int i;






 if(sp==((void*)0)) {
  if (task)
   sp = (unsigned long *)task->thread.sp;
  else
   sp=(unsigned long*)&sp;
 }

 stack = sp;
 for(i=0; i < kstack_depth_to_print; i++) {
  if (kstack_end(stack))
   break;
  if (i && ((i % 4) == 0))
   printk("\n       ");
  printk("%08lx ", *stack++);
 }
 printk("\n");
 show_trace(task, sp);
}
