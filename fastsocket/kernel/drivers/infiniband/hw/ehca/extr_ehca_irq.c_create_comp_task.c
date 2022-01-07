
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct ehca_cpu_comp_task {struct task_struct* task; int wait_queue; int cq_list; int task_lock; } ;
struct ehca_comp_pool {int cpu_comp_tasks; } ;


 int INIT_LIST_HEAD (int *) ;
 int comp_task ;
 int init_waitqueue_head (int *) ;
 struct task_struct* kthread_create (int ,struct ehca_cpu_comp_task*,char*,int) ;
 struct ehca_cpu_comp_task* per_cpu_ptr (int ,int) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct task_struct *create_comp_task(struct ehca_comp_pool *pool,
         int cpu)
{
 struct ehca_cpu_comp_task *cct;

 cct = per_cpu_ptr(pool->cpu_comp_tasks, cpu);
 spin_lock_init(&cct->task_lock);
 INIT_LIST_HEAD(&cct->cq_list);
 init_waitqueue_head(&cct->wait_queue);
 cct->task = kthread_create(comp_task, cct, "ehca_comp/%d", cpu);

 return cct->task;
}
