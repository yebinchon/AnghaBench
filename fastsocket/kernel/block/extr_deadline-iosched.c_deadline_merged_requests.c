
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct request {int queuelist; } ;


 int deadline_remove_request (struct request_queue*,struct request*) ;
 int list_empty (int *) ;
 int list_move (int *,int *) ;
 int rq_fifo_time (struct request*) ;
 int rq_set_fifo_time (struct request*,int ) ;
 scalar_t__ time_before (int ,int ) ;

__attribute__((used)) static void
deadline_merged_requests(struct request_queue *q, struct request *req,
    struct request *next)
{




 if (!list_empty(&req->queuelist) && !list_empty(&next->queuelist)) {
  if (time_before(rq_fifo_time(next), rq_fifo_time(req))) {
   list_move(&req->queuelist, &next->queuelist);
   rq_set_fifo_time(req, rq_fifo_time(next));
  }
 }




 deadline_remove_request(q, next);
}
