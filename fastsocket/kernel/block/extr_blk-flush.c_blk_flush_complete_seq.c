
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct request_queue {size_t flush_pending_idx; int queue_head; struct list_head flush_data_in_flight; int flush_pending_since; struct list_head* flush_queue; } ;
struct TYPE_2__ {unsigned int seq; int list; } ;
struct request {TYPE_1__ flush; struct list_head queuelist; struct request_queue* q; } ;


 int BUG () ;
 int BUG_ON (int) ;




 int __blk_end_request_all (struct request*,int) ;
 unsigned int blk_flush_cur_seq (struct request*) ;
 int blk_flush_restore_request (struct request*) ;
 int blk_kick_flush (struct request_queue*) ;
 int jiffies ;
 scalar_t__ likely (int) ;
 int list_add (struct list_head*,int *) ;
 int list_del_init (int *) ;
 int list_empty (struct list_head*) ;
 int list_move_tail (int *,struct list_head*) ;

__attribute__((used)) static bool blk_flush_complete_seq(struct request *rq, unsigned int seq,
       int error)
{
 struct request_queue *q = rq->q;
 struct list_head *pending = &q->flush_queue[q->flush_pending_idx];
 bool queued = 0;

 BUG_ON(rq->flush.seq & seq);
 rq->flush.seq |= seq;

 if (likely(!error))
  seq = blk_flush_cur_seq(rq);
 else
  seq = 130;

 switch (seq) {
 case 128:
 case 129:

  if (list_empty(pending))
   q->flush_pending_since = jiffies;
  list_move_tail(&rq->flush.list, pending);
  break;

 case 131:
  list_move_tail(&rq->flush.list, &q->flush_data_in_flight);
  list_add(&rq->queuelist, &q->queue_head);
  queued = 1;
  break;

 case 130:






  BUG_ON(!list_empty(&rq->queuelist));
  list_del_init(&rq->flush.list);
  blk_flush_restore_request(rq);
  __blk_end_request_all(rq, error);
  break;

 default:
  BUG();
 }

 return blk_kick_flush(q) | queued;
}
