
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct stack_trace {scalar_t__ nr_entries; scalar_t__ max_entries; int * entries; } ;


 int ULONG_MAX ;
 int dump_trace (struct task_struct*,int *,int *,int *,struct stack_trace*) ;
 int save_stack_ops_nosched ;

void save_stack_trace_tsk(struct task_struct *tsk, struct stack_trace *trace)
{
 dump_trace(tsk, ((void*)0), ((void*)0), &save_stack_ops_nosched, trace);
 if (trace->nr_entries < trace->max_entries)
  trace->entries[trace->nr_entries++] = ULONG_MAX;
}
