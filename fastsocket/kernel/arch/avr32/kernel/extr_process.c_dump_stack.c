
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current ;
 int show_trace_log_lvl (int ,unsigned long*,int *,char*) ;

void dump_stack(void)
{
 unsigned long stack;

 show_trace_log_lvl(current, &stack, ((void*)0), "");
}
