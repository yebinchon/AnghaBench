
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack_trace {scalar_t__ nr_entries; scalar_t__ max_entries; int * entries; } ;


 int ULONG_MAX ;
 int current ;
 int dump_trace (int ,int *,int *,int *,struct stack_trace*) ;
 int save_stack_ops ;

void save_stack_trace(struct stack_trace *trace)
{
 dump_trace(current, ((void*)0), ((void*)0), &save_stack_ops, trace);
 if (trace->nr_entries < trace->max_entries)
  trace->entries[trace->nr_entries++] = ULONG_MAX;
}
