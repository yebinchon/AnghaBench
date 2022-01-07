
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __show_stack (int ,unsigned long*) ;
 int current ;

void dump_stack(void)
{
 unsigned long *stack;

 stack = (unsigned long *)&stack;
 stack++;
 __show_stack(current, stack);
}
