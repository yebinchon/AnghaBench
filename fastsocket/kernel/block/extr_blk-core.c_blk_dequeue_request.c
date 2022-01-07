
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int * in_flight; } ;
struct request {int queuelist; struct request_queue* q; } ;


 int BUG_ON (int ) ;
 int ELV_ON_HASH (struct request*) ;
 scalar_t__ blk_account_rq (struct request*) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 size_t rq_is_sync (struct request*) ;
 int set_io_start_time_ns (struct request*) ;

void blk_dequeue_request(struct request *rq)
{
 struct request_queue *q = rq->q;

 BUG_ON(list_empty(&rq->queuelist));
 BUG_ON(ELV_ON_HASH(rq));

 list_del_init(&rq->queuelist);






 if (blk_account_rq(rq)) {
  q->in_flight[rq_is_sync(rq)]++;
  set_io_start_time_ns(rq);
 }
}
