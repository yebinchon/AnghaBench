
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct stack_trace {unsigned long* entries; scalar_t__ nr_entries; scalar_t__ max_entries; int skip; } ;


 size_t STACK_FRAME_LR_SAVE ;
 int STACK_FRAME_OVERHEAD ;
 int in_sched_functions (unsigned long) ;
 int validate_sp (unsigned long,struct task_struct*,int ) ;

__attribute__((used)) static void save_context_stack(struct stack_trace *trace, unsigned long sp,
   struct task_struct *tsk, int savesched)
{
 for (;;) {
  unsigned long *stack = (unsigned long *) sp;
  unsigned long newsp, ip;

  if (!validate_sp(sp, tsk, STACK_FRAME_OVERHEAD))
   return;

  newsp = stack[0];
  ip = stack[STACK_FRAME_LR_SAVE];

  if (savesched || !in_sched_functions(ip)) {
   if (!trace->skip)
    trace->entries[trace->nr_entries++] = ip;
   else
    trace->skip--;
  }

  if (trace->nr_entries >= trace->max_entries)
   return;

  sp = newsp;
 }
}
