
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_list {int* count; int* starved; int elvpriv; } ;
struct request_queue {int nr_requests; int queue_lock; int queue_flags; int node; struct request_list rq; } ;
struct request {int dummy; } ;
struct io_context {int nr_batch_requests; } ;
struct bio {int dummy; } ;
typedef int gfp_t ;


 int ELV_MQUEUE_MUST ;
 int ELV_MQUEUE_NO ;
 int GFP_ATOMIC ;
 int QUEUE_FLAG_ELVSWITCH ;
 int REQ_ELVPRIV ;
 int REQ_IO_STAT ;
 struct request* blk_alloc_request (struct request_queue*,int,int ) ;
 int blk_queue_dead (struct request_queue*) ;
 int blk_queue_full (struct request_queue*,int const) ;
 scalar_t__ blk_queue_io_stat (struct request_queue*) ;
 scalar_t__ blk_rq_should_init_elevator (struct bio*) ;
 int blk_set_queue_congested (struct request_queue*,int const) ;
 int blk_set_queue_full (struct request_queue*,int const) ;
 struct io_context* current_io_context (int ,int ) ;
 int elv_may_queue (struct request_queue*,int) ;
 int freed_request (struct request_queue*,int) ;
 scalar_t__ ioc_batching (struct request_queue*,struct io_context*) ;
 int ioc_set_batching (struct request_queue*,struct io_context*) ;
 int queue_congestion_on_threshold (struct request_queue*) ;
 scalar_t__ rw_is_sync (int) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 int test_bit (int ,int *) ;
 int trace_block_getrq (struct request_queue*,struct bio*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct request *get_request(struct request_queue *q, int rw_flags,
       struct bio *bio, gfp_t gfp_mask)
{
 struct request *rq = ((void*)0);
 struct request_list *rl = &q->rq;
 struct io_context *ioc = ((void*)0);
 const bool is_sync = rw_is_sync(rw_flags) != 0;
 int may_queue;

 if (unlikely(blk_queue_dead(q)))
  return ((void*)0);

 may_queue = elv_may_queue(q, rw_flags);
 if (may_queue == ELV_MQUEUE_NO)
  goto rq_starved;

 if (rl->count[is_sync]+1 >= queue_congestion_on_threshold(q)) {
  if (rl->count[is_sync]+1 >= q->nr_requests) {
   ioc = current_io_context(GFP_ATOMIC, q->node);






   if (!blk_queue_full(q, is_sync)) {
    ioc_set_batching(q, ioc);
    blk_set_queue_full(q, is_sync);
   } else {
    if (may_queue != ELV_MQUEUE_MUST
      && !ioc_batching(q, ioc)) {





     goto out;
    }
   }
  }
  blk_set_queue_congested(q, is_sync);
 }






 if (rl->count[is_sync] >= (3 * q->nr_requests / 2))
  goto out;

 rl->count[is_sync]++;
 rl->starved[is_sync] = 0;

 if (blk_rq_should_init_elevator(bio) &&
     !test_bit(QUEUE_FLAG_ELVSWITCH, &q->queue_flags)) {
  rw_flags |= REQ_ELVPRIV;
  rl->elvpriv++;
 }

 if (blk_queue_io_stat(q))
  rw_flags |= REQ_IO_STAT;
 spin_unlock_irq(q->queue_lock);

 rq = blk_alloc_request(q, rw_flags, gfp_mask);
 if (unlikely(!rq)) {







  spin_lock_irq(q->queue_lock);
  freed_request(q, rw_flags);
rq_starved:
  if (unlikely(rl->count[is_sync] == 0))
   rl->starved[is_sync] = 1;

  goto out;
 }







 if (ioc_batching(q, ioc))
  ioc->nr_batch_requests--;

 trace_block_getrq(q, bio, rw_flags & 1);
out:
 return rq;
}
