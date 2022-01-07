
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_context {unsigned long r14; scalar_t__ r15; } ;
struct thread_info {struct cpu_context cpu_context; } ;
struct task_struct {scalar_t__ stack; } ;


 scalar_t__ in_sched_functions (scalar_t__) ;

unsigned long thread_saved_pc(struct task_struct *tsk)
{
 struct cpu_context *ctx =
  &(((struct thread_info *)(tsk->stack))->cpu_context);


 if (in_sched_functions(ctx->r15))
  return (unsigned long)ctx->r15;
 else
  return ctx->r14;
}
