
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long THREAD_SIZE ;
 scalar_t__ __kernel_text_address (unsigned long) ;
 int printk (char*,...) ;

void show_trace(unsigned long *stack)
{
 unsigned long *endstack;
 unsigned long addr;
 int i;

 printk("Call Trace:");
 addr = (unsigned long)stack + THREAD_SIZE - 1;
 endstack = (unsigned long *)(addr & -THREAD_SIZE);
 i = 0;
 while (stack + 1 <= endstack) {
  addr = *stack++;
  if (__kernel_text_address(addr)) {

   if (i % 5 == 0)
    printk("\n       ");

   printk(" [<%08lx>] %pS\n", addr, (void *)addr);
   i++;
  }
 }
 printk("\n");
}
