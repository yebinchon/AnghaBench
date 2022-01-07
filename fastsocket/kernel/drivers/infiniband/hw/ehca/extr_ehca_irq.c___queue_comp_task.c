
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehca_cq {scalar_t__ nr_callbacks; int task_lock; int entry; } ;
struct ehca_cpu_comp_task {int task_lock; int wait_queue; int cq_jobs; int cq_list; } ;


 int list_add_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

__attribute__((used)) static void __queue_comp_task(struct ehca_cq *__cq,
         struct ehca_cpu_comp_task *cct)
{
 unsigned long flags;

 spin_lock_irqsave(&cct->task_lock, flags);
 spin_lock(&__cq->task_lock);

 if (__cq->nr_callbacks == 0) {
  __cq->nr_callbacks++;
  list_add_tail(&__cq->entry, &cct->cq_list);
  cct->cq_jobs++;
  wake_up(&cct->wait_queue);
 } else
  __cq->nr_callbacks++;

 spin_unlock(&__cq->task_lock);
 spin_unlock_irqrestore(&cct->task_lock, flags);
}
