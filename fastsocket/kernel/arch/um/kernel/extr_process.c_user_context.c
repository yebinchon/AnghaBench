
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long CONFIG_KERNEL_STACK_ORDER ;
 unsigned long PAGE_MASK ;
 scalar_t__ current_thread_info () ;

int user_context(unsigned long sp)
{
 unsigned long stack;

 stack = sp & (PAGE_MASK << CONFIG_KERNEL_STACK_ORDER);
 return stack != (unsigned long) current_thread_info();
}
