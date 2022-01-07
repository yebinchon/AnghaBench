
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sas_task_slow {int completion; int timer; } ;
struct sas_task {struct sas_task_slow* slow_task; } ;
typedef int gfp_t ;


 int init_completion (int *) ;
 int init_timer (int *) ;
 int kfree (struct sas_task_slow*) ;
 struct sas_task_slow* kmalloc (int,int ) ;
 int kmem_cache_free (int ,struct sas_task*) ;
 struct sas_task* sas_alloc_task (int ) ;
 int sas_task_cache ;

struct sas_task *sas_alloc_slow_task(gfp_t flags)
{
 struct sas_task *task = sas_alloc_task(flags);
 struct sas_task_slow *slow = kmalloc(sizeof(*slow), flags);

 if (!task || !slow) {
  if (task)
   kmem_cache_free(sas_task_cache, task);
  kfree(slow);
  return ((void*)0);
 }

 task->slow_task = slow;
 init_timer(&slow->timer);
 init_completion(&slow->completion);

 return task;
}
