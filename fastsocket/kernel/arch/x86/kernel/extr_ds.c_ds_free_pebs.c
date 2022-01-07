
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_3__ {TYPE_2__* context; } ;
struct pebs_tracer {TYPE_1__ ds; } ;
struct TYPE_4__ {struct pebs_tracer* pebs_master; struct task_struct* task; } ;


 int WARN_ON_ONCE (int) ;
 int ds_put_context (TYPE_2__*) ;
 int kfree (struct pebs_tracer*) ;
 int put_tracer (struct task_struct*) ;

__attribute__((used)) static void ds_free_pebs(struct pebs_tracer *tracer)
{
 struct task_struct *task;

 task = tracer->ds.context->task;

 WARN_ON_ONCE(tracer->ds.context->pebs_master != tracer);
 tracer->ds.context->pebs_master = ((void*)0);

 ds_put_context(tracer->ds.context);
 put_tracer(task);

 kfree(tracer);
}
