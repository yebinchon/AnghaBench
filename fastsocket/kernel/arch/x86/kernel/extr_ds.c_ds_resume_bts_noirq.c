
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {unsigned long debugctlmsr; } ;
struct task_struct {TYPE_5__ thread; } ;
struct TYPE_9__ {TYPE_3__* context; } ;
struct TYPE_6__ {int flags; } ;
struct TYPE_7__ {TYPE_1__ ds; } ;
struct bts_tracer {TYPE_4__ ds; TYPE_2__ trace; int flags; } ;
struct TYPE_8__ {int cpu; struct task_struct* task; } ;


 int EPERM ;
 unsigned long ds_bts_control (struct bts_tracer*) ;
 unsigned long get_debugctlmsr () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int smp_processor_id () ;
 int update_debugctlmsr (unsigned long) ;
 int update_task_debugctlmsr (struct task_struct*,unsigned long) ;

int ds_resume_bts_noirq(struct bts_tracer *tracer)
{
 struct task_struct *task;
 unsigned long debugctlmsr, irq;
 int cpu, error = 0;

 if (!tracer)
  return 0;

 tracer->flags = tracer->trace.ds.flags;

 task = tracer->ds.context->task;
 cpu = tracer->ds.context->cpu;

 local_irq_save(irq);

 error = -EPERM;
 if (!task && (cpu != smp_processor_id()))
  goto out;

 debugctlmsr = (task ?
         task->thread.debugctlmsr :
         get_debugctlmsr());
 debugctlmsr |= ds_bts_control(tracer);

 if (task)
  update_task_debugctlmsr(task, debugctlmsr);
 else
  update_debugctlmsr(debugctlmsr);

 error = 0;
 out:
 local_irq_restore(irq);
 return error;
}
