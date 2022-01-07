
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned long debugctlmsr; } ;
struct task_struct {TYPE_1__ thread; } ;
struct TYPE_6__ {TYPE_2__* context; } ;
struct bts_tracer {TYPE_3__ ds; scalar_t__ flags; } ;
struct TYPE_5__ {int cpu; struct task_struct* task; } ;


 unsigned long BTS_CONTROL ;
 int WARN_ON (int) ;
 unsigned long get_debugctlmsr_on_cpu (int) ;
 scalar_t__ irqs_disabled () ;
 int update_debugctlmsr_on_cpu (int,unsigned long) ;
 int update_task_debugctlmsr (struct task_struct*,unsigned long) ;

void ds_suspend_bts(struct bts_tracer *tracer)
{
 struct task_struct *task;
 unsigned long debugctlmsr;
 int cpu;

 if (!tracer)
  return;

 tracer->flags = 0;

 task = tracer->ds.context->task;
 cpu = tracer->ds.context->cpu;

 WARN_ON(!task && irqs_disabled());

 debugctlmsr = (task ?
         task->thread.debugctlmsr :
         get_debugctlmsr_on_cpu(cpu));
 debugctlmsr &= ~BTS_CONTROL;

 if (task)
  update_task_debugctlmsr(task, debugctlmsr);
 else
  update_debugctlmsr_on_cpu(cpu, debugctlmsr);
}
