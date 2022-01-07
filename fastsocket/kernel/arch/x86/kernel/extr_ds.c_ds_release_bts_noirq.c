
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_4__ {TYPE_1__* context; } ;
struct bts_tracer {TYPE_2__ ds; } ;
struct TYPE_3__ {scalar_t__ cpu; struct task_struct* task; } ;


 int EPERM ;
 struct task_struct* current ;
 int ds_free_bts (struct bts_tracer*) ;
 int ds_suspend_bts_noirq (struct bts_tracer*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 scalar_t__ smp_processor_id () ;

int ds_release_bts_noirq(struct bts_tracer *tracer)
{
 struct task_struct *task;
 unsigned long irq;
 int error;

 if (!tracer)
  return 0;

 task = tracer->ds.context->task;

 local_irq_save(irq);

 error = -EPERM;
 if (!task &&
     (tracer->ds.context->cpu != smp_processor_id()))
  goto out;

 error = -EPERM;
 if (task && (task != current))
  goto out;

 ds_suspend_bts_noirq(tracer);
 ds_free_bts(tracer);

 error = 0;
 out:
 local_irq_restore(irq);
 return error;
}
