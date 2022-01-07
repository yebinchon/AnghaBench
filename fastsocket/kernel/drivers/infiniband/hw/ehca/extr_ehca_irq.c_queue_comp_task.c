
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ehca_cq {int dummy; } ;
struct ehca_cpu_comp_task {int cq_jobs; int task_lock; } ;
struct TYPE_3__ {int cpu_comp_tasks; } ;


 int BUG_ON (int) ;
 int __queue_comp_task (struct ehca_cq*,struct ehca_cpu_comp_task*) ;
 int cpu_online (int) ;
 int find_next_online_cpu (TYPE_1__*) ;
 struct ehca_cpu_comp_task* per_cpu_ptr (int ,int) ;
 TYPE_1__* pool ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void queue_comp_task(struct ehca_cq *__cq)
{
 int cpu_id;
 struct ehca_cpu_comp_task *cct;
 int cq_jobs;
 unsigned long flags;

 cpu_id = find_next_online_cpu(pool);
 BUG_ON(!cpu_online(cpu_id));

 cct = per_cpu_ptr(pool->cpu_comp_tasks, cpu_id);
 BUG_ON(!cct);

 spin_lock_irqsave(&cct->task_lock, flags);
 cq_jobs = cct->cq_jobs;
 spin_unlock_irqrestore(&cct->task_lock, flags);
 if (cq_jobs > 0) {
  cpu_id = find_next_online_cpu(pool);
  cct = per_cpu_ptr(pool->cpu_comp_tasks, cpu_id);
  BUG_ON(!cct);
 }

 __queue_comp_task(__cq, cct);
}
