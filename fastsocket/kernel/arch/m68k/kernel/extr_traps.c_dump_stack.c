
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int show_trace (unsigned long*) ;

void dump_stack(void)
{
 unsigned long stack;

 show_trace(&stack);
}
