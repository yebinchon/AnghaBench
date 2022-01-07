
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ksp; } ;
struct task_struct {TYPE_1__ thread; } ;
struct stack_trace {int dummy; } ;


 int save_context_stack (struct stack_trace*,int ,struct task_struct*,int ) ;

void save_stack_trace_tsk(struct task_struct *tsk, struct stack_trace *trace)
{
 save_context_stack(trace, tsk->thread.ksp, tsk, 0);
}
