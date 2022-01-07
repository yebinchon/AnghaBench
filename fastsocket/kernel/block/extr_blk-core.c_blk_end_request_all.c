
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {struct request* next_rq; } ;


 int BUG_ON (int) ;
 int blk_bidi_rq (struct request*) ;
 int blk_end_bidi_request (struct request*,int,unsigned int,unsigned int) ;
 unsigned int blk_rq_bytes (struct request*) ;
 scalar_t__ unlikely (int ) ;

void blk_end_request_all(struct request *rq, int error)
{
 bool pending;
 unsigned int bidi_bytes = 0;

 if (unlikely(blk_bidi_rq(rq)))
  bidi_bytes = blk_rq_bytes(rq->next_rq);

 pending = blk_end_bidi_request(rq, error, blk_rq_bytes(rq), bidi_bytes);
 BUG_ON(pending);
}
