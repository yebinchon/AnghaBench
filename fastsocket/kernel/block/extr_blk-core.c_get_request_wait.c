
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_list {int * wait; } ;
struct request_queue {int queue_lock; int node; struct request_list rq; } ;
struct request {int dummy; } ;
struct io_context {int dummy; } ;
struct bio {int dummy; } ;


 int DEFINE_WAIT (int ) ;
 int GFP_NOIO ;
 int TASK_UNINTERRUPTIBLE ;
 int __generic_unplug_device (struct request_queue*) ;
 int blk_queue_dead (struct request_queue*) ;
 struct io_context* current_io_context (int ,int ) ;
 int finish_wait (int *,int *) ;
 struct request* get_request (struct request_queue*,int,struct bio*,int ) ;
 int io_schedule () ;
 int ioc_set_batching (struct request_queue*,struct io_context*) ;
 int prepare_to_wait_exclusive (int *,int *,int ) ;
 scalar_t__ rw_is_sync (int) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 int trace_block_sleeprq (struct request_queue*,struct bio*,int) ;
 scalar_t__ unlikely (int ) ;
 int wait ;

__attribute__((used)) static struct request *get_request_wait(struct request_queue *q, int rw_flags,
     struct bio *bio)
{
 const bool is_sync = rw_is_sync(rw_flags) != 0;
 struct request *rq;

 rq = get_request(q, rw_flags, bio, GFP_NOIO);
 while (!rq) {
  DEFINE_WAIT(wait);
  struct io_context *ioc;
  struct request_list *rl = &q->rq;

  if (unlikely(blk_queue_dead(q)))
   return ((void*)0);

  prepare_to_wait_exclusive(&rl->wait[is_sync], &wait,
    TASK_UNINTERRUPTIBLE);

  trace_block_sleeprq(q, bio, rw_flags & 1);

  __generic_unplug_device(q);
  spin_unlock_irq(q->queue_lock);
  io_schedule();







  ioc = current_io_context(GFP_NOIO, q->node);
  ioc_set_batching(q, ioc);

  spin_lock_irq(q->queue_lock);
  finish_wait(&rl->wait[is_sync], &wait);

  rq = get_request(q, rw_flags, bio, GFP_NOIO);
 };

 return rq;
}
