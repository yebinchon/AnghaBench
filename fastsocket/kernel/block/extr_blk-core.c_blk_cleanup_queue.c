
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {scalar_t__ elevator; int sysfs_lock; int __queue_lock; int * queue_lock; } ;
typedef int spinlock_t ;


 int QUEUE_FLAG_DEAD ;
 int QUEUE_FLAG_NOMERGES ;
 int blk_drain_queue (struct request_queue*,int) ;
 int blk_put_queue (struct request_queue*) ;
 int blk_sync_queue (struct request_queue*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int queue_flag_set (int ,struct request_queue*) ;
 int queue_flag_set_unlocked (int ,struct request_queue*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void blk_cleanup_queue(struct request_queue *q)
{
 spinlock_t *lock = q->queue_lock;


 mutex_lock(&q->sysfs_lock);
 queue_flag_set_unlocked(QUEUE_FLAG_DEAD, q);

 spin_lock_irq(lock);
 queue_flag_set(QUEUE_FLAG_NOMERGES, q);
 queue_flag_set(QUEUE_FLAG_DEAD, q);

 if (q->queue_lock != &q->__queue_lock)
  q->queue_lock = &q->__queue_lock;

 spin_unlock_irq(lock);
 mutex_unlock(&q->sysfs_lock);






 if (q->elevator)
  blk_drain_queue(q, 1);


 blk_sync_queue(q);


 blk_put_queue(q);
}
