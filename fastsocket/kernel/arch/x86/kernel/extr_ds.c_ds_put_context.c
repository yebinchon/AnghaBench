
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct ds_context {struct task_struct* task; int ** this; scalar_t__ count; } ;


 int TIF_DS_AREA_MSR ;
 int clear_tsk_thread_flag (struct task_struct*,int ) ;
 struct task_struct* current ;
 int ds_lock ;
 int kfree (struct ds_context*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_task_context_switch (struct task_struct*) ;

__attribute__((used)) static void ds_put_context(struct ds_context *context)
{
 struct task_struct *task;
 unsigned long irq;

 if (!context)
  return;

 spin_lock_irqsave(&ds_lock, irq);

 if (--context->count) {
  spin_unlock_irqrestore(&ds_lock, irq);
  return;
 }

 *(context->this) = ((void*)0);

 task = context->task;

 if (task)
  clear_tsk_thread_flag(task, TIF_DS_AREA_MSR);
 spin_unlock_irqrestore(&ds_lock, irq);


 if (task && (task != current))
  wait_task_context_switch(task);

 kfree(context);
}
