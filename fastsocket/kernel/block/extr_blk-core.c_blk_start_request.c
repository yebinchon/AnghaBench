
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {struct request* next_rq; void* resid_len; } ;


 int blk_add_timer (struct request*) ;
 int blk_bidi_rq (struct request*) ;
 int blk_dequeue_request (struct request*) ;
 void* blk_rq_bytes (struct request*) ;
 scalar_t__ unlikely (int ) ;

void blk_start_request(struct request *req)
{
 blk_dequeue_request(req);





 req->resid_len = blk_rq_bytes(req);
 if (unlikely(blk_bidi_rq(req)))
  req->next_rq->resid_len = blk_rq_bytes(req->next_rq);

 blk_add_timer(req);
}
