
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 scalar_t__ __kernel_text_address (unsigned long) ;
 int kstack_end (unsigned long*) ;
 int print_symbol (char*,unsigned long) ;
 int printk (char*,...) ;

__attribute__((used)) static void show_trace(struct task_struct *task, unsigned long *stack)
{
 unsigned long addr;

 if (!stack)
  stack = (unsigned long*)&stack;

 printk("Call Trace: ");
 while (!kstack_end(stack)) {
  addr = *stack++;
  if (__kernel_text_address(addr)) {
   printk("[<%08lx>] ", addr);
   print_symbol("%s\n", addr);
  }
 }
 printk("\n");
}
