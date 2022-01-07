
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int (* unprep_rq_fn ) (struct request_queue*,struct request*) ;} ;
struct request {int cmd_flags; struct request_queue* q; } ;


 int REQ_DONTPREP ;
 int stub1 (struct request_queue*,struct request*) ;

void blk_unprep_request(struct request *req)
{
 struct request_queue *q = req->q;

 req->cmd_flags &= ~REQ_DONTPREP;
 if (q->unprep_rq_fn)
  q->unprep_rq_fn(q, req);
}
