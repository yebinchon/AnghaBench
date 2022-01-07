
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int queue_head; struct request* boundary_rq; int end_sector; int nr_sorted; struct request* last_merge; } ;
struct request {int queuelist; } ;


 int elv_rqhash_del (struct request_queue*,struct request*) ;
 int list_add_tail (int *,int *) ;
 int rq_end_sector (struct request*) ;

void elv_dispatch_add_tail(struct request_queue *q, struct request *rq)
{
 if (q->last_merge == rq)
  q->last_merge = ((void*)0);

 elv_rqhash_del(q, rq);

 q->nr_sorted--;

 q->end_sector = rq_end_sector(rq);
 q->boundary_rq = rq;
 list_add_tail(&rq->queuelist, &q->queue_head);
}
