
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct throtl_grp {int dummy; } ;
struct throtl_data {struct throtl_grp* root_tg; struct request_queue* queue; } ;
struct request_queue {int queue_lock; } ;
struct blkio_cgroup {int dummy; } ;


 int blk_queue_dead (struct request_queue*) ;
 int current ;
 int kfree (struct throtl_grp*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 struct blkio_cgroup* task_blkio_cgroup (int ) ;
 struct throtl_grp* throtl_alloc_tg (struct throtl_data*) ;
 struct throtl_grp* throtl_find_tg (struct throtl_data*,struct blkio_cgroup*) ;
 int throtl_init_add_tg_lists (struct throtl_data*,struct throtl_grp*,struct blkio_cgroup*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static struct throtl_grp * throtl_get_tg(struct throtl_data *td)
{
 struct throtl_grp *tg = ((void*)0), *__tg = ((void*)0);
 struct blkio_cgroup *blkcg;
 struct request_queue *q = td->queue;


 if (unlikely(blk_queue_dead(q)))
  return ((void*)0);

 rcu_read_lock();
 blkcg = task_blkio_cgroup(current);
 tg = throtl_find_tg(td, blkcg);
 if (tg) {
  rcu_read_unlock();
  return tg;
 }






 rcu_read_unlock();
 spin_unlock_irq(q->queue_lock);

 tg = throtl_alloc_tg(td);


 spin_lock_irq(q->queue_lock);


 if (unlikely(blk_queue_dead(q))) {
  kfree(tg);
  return ((void*)0);
 }




 rcu_read_lock();
 blkcg = task_blkio_cgroup(current);





 __tg = throtl_find_tg(td, blkcg);

 if (__tg) {
  kfree(tg);
  rcu_read_unlock();
  return __tg;
 }


 if (!tg) {
  tg = td->root_tg;
  return tg;
 }

 throtl_init_add_tg_lists(td, tg, blkcg);
 rcu_read_unlock();
 return tg;
}
