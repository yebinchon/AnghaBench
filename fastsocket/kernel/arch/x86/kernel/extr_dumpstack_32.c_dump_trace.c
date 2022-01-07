
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread_info {scalar_t__ previous_esp; } ;
struct TYPE_2__ {scalar_t__ sp; } ;
struct task_struct {TYPE_1__ thread; } ;
struct stacktrace_ops {unsigned long (* walk_stack ) (struct thread_info*,unsigned long*,unsigned long,struct stacktrace_ops const*,void*,int *,int*) ;scalar_t__ (* stack ) (void*,char*) ;} ;
struct pt_regs {int dummy; } ;


 int THREAD_SIZE ;
 struct task_struct* current ;
 unsigned long stack_frame (struct task_struct*,struct pt_regs*) ;
 unsigned long stub1 (struct thread_info*,unsigned long*,unsigned long,struct stacktrace_ops const*,void*,int *,int*) ;
 scalar_t__ stub2 (void*,char*) ;
 int touch_nmi_watchdog () ;

void dump_trace(struct task_struct *task,
  struct pt_regs *regs, unsigned long *stack,
  const struct stacktrace_ops *ops, void *data)
{
 int graph = 0;
 unsigned long bp;

 if (!task)
  task = current;

 if (!stack) {
  unsigned long dummy;

  stack = &dummy;
  if (task && task != current)
   stack = (unsigned long *)task->thread.sp;
 }

 bp = stack_frame(task, regs);
 for (;;) {
  struct thread_info *context;

  context = (struct thread_info *)
   ((unsigned long)stack & (~(THREAD_SIZE - 1)));
  bp = ops->walk_stack(context, stack, bp, ops, data, ((void*)0), &graph);

  stack = (unsigned long *)context->previous_esp;
  if (!stack)
   break;
  if (ops->stack(data, "IRQ") < 0)
   break;
  touch_nmi_watchdog();
 }
}
