
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_list {scalar_t__* count; int * wait; } ;
struct request_queue {scalar_t__ nr_requests; struct request_list rq; } ;


 int blk_clear_queue_congested (struct request_queue*,int) ;
 int blk_clear_queue_full (struct request_queue*,int) ;
 scalar_t__ queue_congestion_off_threshold (struct request_queue*) ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void __freed_request(struct request_queue *q, int sync)
{
 struct request_list *rl = &q->rq;

 if (rl->count[sync] < queue_congestion_off_threshold(q))
  blk_clear_queue_congested(q, sync);

 if (rl->count[sync] + 1 <= q->nr_requests) {
  if (waitqueue_active(&rl->wait[sync]))
   wake_up(&rl->wait[sync]);

  blk_clear_queue_full(q, sync);
 }
}
