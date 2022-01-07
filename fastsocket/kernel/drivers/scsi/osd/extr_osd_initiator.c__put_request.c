
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int bio; int q; } ;


 int ENOMEM ;
 int WARN_ON (int ) ;
 int __blk_put_request (int ,struct request*) ;
 int blk_end_request (struct request*,int ,int ) ;
 int blk_put_request (struct request*) ;
 int blk_rq_bytes (struct request*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void _put_request(struct request *rq , bool is_async)
{
 if (is_async) {
  WARN_ON(rq->bio);
  __blk_put_request(rq->q, rq);
 } else {






  if (unlikely(rq->bio))
   blk_end_request(rq, -ENOMEM, blk_rq_bytes(rq));
  else
   blk_put_request(rq);
 }
}
