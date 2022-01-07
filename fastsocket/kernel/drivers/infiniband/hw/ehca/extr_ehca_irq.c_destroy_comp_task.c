
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct ehca_cpu_comp_task {int task_lock; scalar_t__ cq_jobs; struct task_struct* task; } ;
struct ehca_comp_pool {int cpu_comp_tasks; } ;


 int kthread_stop (struct task_struct*) ;
 struct ehca_cpu_comp_task* per_cpu_ptr (int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void destroy_comp_task(struct ehca_comp_pool *pool,
         int cpu)
{
 struct ehca_cpu_comp_task *cct;
 struct task_struct *task;
 unsigned long flags_cct;

 cct = per_cpu_ptr(pool->cpu_comp_tasks, cpu);

 spin_lock_irqsave(&cct->task_lock, flags_cct);

 task = cct->task;
 cct->task = ((void*)0);
 cct->cq_jobs = 0;

 spin_unlock_irqrestore(&cct->task_lock, flags_cct);

 if (task)
  kthread_stop(task);
}
