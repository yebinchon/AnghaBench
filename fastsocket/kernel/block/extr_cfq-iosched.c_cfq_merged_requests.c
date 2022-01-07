
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct request {int queuelist; } ;
struct cfq_queue {struct request* next_rq; } ;
struct TYPE_2__ {int blkg; } ;


 TYPE_1__* RQ_CFQG (struct request*) ;
 struct cfq_queue* RQ_CFQQ (struct request*) ;
 int cfq_blkiocg_update_io_merged_stats (int *,int ,int ) ;
 int cfq_remove_request (struct request*) ;
 int list_empty (int *) ;
 int list_move (int *,int *) ;
 int rq_data_dir (struct request*) ;
 int rq_fifo_time (struct request*) ;
 int rq_is_sync (struct request*) ;
 int rq_set_fifo_time (struct request*,int ) ;
 scalar_t__ time_before (int ,int ) ;

__attribute__((used)) static void
cfq_merged_requests(struct request_queue *q, struct request *rq,
      struct request *next)
{
 struct cfq_queue *cfqq = RQ_CFQQ(rq);



 if (!list_empty(&rq->queuelist) && !list_empty(&next->queuelist) &&
     time_before(rq_fifo_time(next), rq_fifo_time(rq))) {
  list_move(&rq->queuelist, &next->queuelist);
  rq_set_fifo_time(rq, rq_fifo_time(next));
 }

 if (cfqq->next_rq == next)
  cfqq->next_rq = rq;
 cfq_remove_request(next);
 cfq_blkiocg_update_io_merged_stats(&(RQ_CFQG(rq))->blkg,
     rq_data_dir(next), rq_is_sync(next));
}
