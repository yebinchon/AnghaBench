
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int q; } ;


 int __blk_complete_request (struct request*) ;
 int blk_mark_rq_complete (struct request*) ;
 int blk_should_fake_timeout (int ) ;
 scalar_t__ unlikely (int ) ;

void blk_complete_request(struct request *req)
{
 if (unlikely(blk_should_fake_timeout(req->q)))
  return;
 if (!blk_mark_rq_complete(req))
  __blk_complete_request(req);
}
