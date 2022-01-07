
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_3__ {TYPE_2__* context; } ;
struct bts_tracer {TYPE_1__ ds; } ;
struct TYPE_4__ {struct bts_tracer* bts_master; struct task_struct* task; } ;


 int WARN_ON_ONCE (int) ;
 struct task_struct* current ;
 int ds_put_context (TYPE_2__*) ;
 int kfree (struct bts_tracer*) ;
 int put_tracer (struct task_struct*) ;
 int wait_task_context_switch (struct task_struct*) ;

__attribute__((used)) static void ds_free_bts(struct bts_tracer *tracer)
{
 struct task_struct *task;

 task = tracer->ds.context->task;

 WARN_ON_ONCE(tracer->ds.context->bts_master != tracer);
 tracer->ds.context->bts_master = ((void*)0);


 if (task && (task != current))
  wait_task_context_switch(task);

 ds_put_context(tracer->ds.context);
 put_tracer(task);

 kfree(tracer);
}
