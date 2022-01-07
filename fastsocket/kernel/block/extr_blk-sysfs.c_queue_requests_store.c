
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_list {int* count; int * wait; } ;
struct request_queue {unsigned long nr_requests; int queue_lock; int request_fn; struct request_list rq; } ;
typedef int ssize_t ;


 unsigned long BLKDEV_MIN_RQ ;
 size_t BLK_RW_ASYNC ;
 size_t BLK_RW_SYNC ;
 int EINVAL ;
 int blk_clear_queue_congested (struct request_queue*,size_t) ;
 int blk_clear_queue_full (struct request_queue*,size_t) ;
 int blk_queue_congestion_threshold (struct request_queue*) ;
 int blk_set_queue_congested (struct request_queue*,size_t) ;
 int blk_set_queue_full (struct request_queue*,size_t) ;
 int queue_congestion_off_threshold (struct request_queue*) ;
 int queue_congestion_on_threshold (struct request_queue*) ;
 int queue_var_store (unsigned long*,char const*,size_t) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 int wake_up (int *) ;

__attribute__((used)) static ssize_t
queue_requests_store(struct request_queue *q, const char *page, size_t count)
{
 struct request_list *rl = &q->rq;
 unsigned long nr;
 int ret;

 if (!q->request_fn)
  return -EINVAL;

 ret = queue_var_store(&nr, page, count);
 if (nr < BLKDEV_MIN_RQ)
  nr = BLKDEV_MIN_RQ;

 spin_lock_irq(q->queue_lock);
 q->nr_requests = nr;
 blk_queue_congestion_threshold(q);

 if (rl->count[BLK_RW_SYNC] >= queue_congestion_on_threshold(q))
  blk_set_queue_congested(q, BLK_RW_SYNC);
 else if (rl->count[BLK_RW_SYNC] < queue_congestion_off_threshold(q))
  blk_clear_queue_congested(q, BLK_RW_SYNC);

 if (rl->count[BLK_RW_ASYNC] >= queue_congestion_on_threshold(q))
  blk_set_queue_congested(q, BLK_RW_ASYNC);
 else if (rl->count[BLK_RW_ASYNC] < queue_congestion_off_threshold(q))
  blk_clear_queue_congested(q, BLK_RW_ASYNC);

 if (rl->count[BLK_RW_SYNC] >= q->nr_requests) {
  blk_set_queue_full(q, BLK_RW_SYNC);
 } else if (rl->count[BLK_RW_SYNC]+1 <= q->nr_requests) {
  blk_clear_queue_full(q, BLK_RW_SYNC);
  wake_up(&rl->wait[BLK_RW_SYNC]);
 }

 if (rl->count[BLK_RW_ASYNC] >= q->nr_requests) {
  blk_set_queue_full(q, BLK_RW_ASYNC);
 } else if (rl->count[BLK_RW_ASYNC]+1 <= q->nr_requests) {
  blk_clear_queue_full(q, BLK_RW_ASYNC);
  wake_up(&rl->wait[BLK_RW_ASYNC]);
 }
 spin_unlock_irq(q->queue_lock);
 return ret;
}
