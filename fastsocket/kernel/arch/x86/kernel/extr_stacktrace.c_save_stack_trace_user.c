
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stack_trace {scalar_t__ nr_entries; scalar_t__ max_entries; int * entries; } ;
struct TYPE_2__ {scalar_t__ mm; } ;


 int ULONG_MAX ;
 int __save_stack_trace_user (struct stack_trace*) ;
 TYPE_1__* current ;

void save_stack_trace_user(struct stack_trace *trace)
{



 if (current->mm) {
  __save_stack_trace_user(trace);
 }
 if (trace->nr_entries < trace->max_entries)
  trace->entries[trace->nr_entries++] = ULONG_MAX;
}
