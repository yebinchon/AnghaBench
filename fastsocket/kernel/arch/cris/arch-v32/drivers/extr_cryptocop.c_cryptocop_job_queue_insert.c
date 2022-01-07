
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cryptocop_prio_job {int node; } ;
struct cryptocop_operation {int cb; } ;
typedef size_t cryptocop_queue_priority ;
struct TYPE_2__ {int jobs; } ;


 int DEBUG (int ) ;
 int DEBUG_API (int ) ;
 int EINVAL ;
 int assert (int ) ;
 int cryptocop_job_queue_lock ;
 TYPE_1__* cryptocop_job_queues ;
 int cryptocop_job_setup (struct cryptocop_prio_job**,struct cryptocop_operation*) ;
 int cryptocop_start_job () ;
 int list_add_tail (int *,int *) ;
 int printk (char*,...) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int cryptocop_job_queue_insert(cryptocop_queue_priority prio, struct cryptocop_operation *operation)
{
 int ret;
 struct cryptocop_prio_job *pj = ((void*)0);
 unsigned long int flags;

 DEBUG(printk("cryptocop_job_queue_insert(%d, 0x%p)\n", prio, operation));

 if (!operation || !operation->cb){
  DEBUG_API(printk("cryptocop_job_queue_insert oper=0x%p, NULL operation or callback\n", operation));
  return -EINVAL;
 }

 if ((ret = cryptocop_job_setup(&pj, operation)) != 0){
  DEBUG_API(printk("cryptocop_job_queue_insert: job setup failed\n"));
  return ret;
 }
 assert(pj != ((void*)0));

 spin_lock_irqsave(&cryptocop_job_queue_lock, flags);
 list_add_tail(&pj->node, &cryptocop_job_queues[prio].jobs);
 spin_unlock_irqrestore(&cryptocop_job_queue_lock, flags);


 cryptocop_start_job();
 return 0;
}
