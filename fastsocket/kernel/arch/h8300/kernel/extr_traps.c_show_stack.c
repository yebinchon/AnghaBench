
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int THREAD_SIZE ;
 scalar_t__ check_kernel_text (unsigned long) ;
 int kstack_depth_to_print ;
 int printk (char*,...) ;

void show_stack(struct task_struct *task, unsigned long *esp)
{
 unsigned long *stack, addr;
 int i;

 if (esp == ((void*)0))
  esp = (unsigned long *) &esp;

 stack = esp;

 printk("Stack from %08lx:", (unsigned long)stack);
 for (i = 0; i < kstack_depth_to_print; i++) {
  if (((unsigned long)stack & (THREAD_SIZE - 1)) == 0)
   break;
  if (i % 8 == 0)
   printk("\n       ");
  printk(" %08lx", *stack++);
 }

 printk("\nCall Trace:");
 i = 0;
 stack = esp;
 while (((unsigned long)stack & (THREAD_SIZE - 1)) != 0) {
  addr = *stack++;
  if (check_kernel_text(addr)) {
   if (i % 4 == 0)
    printk("\n       ");
   printk(" [<%08lx>]", addr);
   i++;
  }
 }
 printk("\n");
}
