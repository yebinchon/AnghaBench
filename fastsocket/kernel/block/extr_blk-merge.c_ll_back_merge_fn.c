
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {struct request* last_merge; } ;
struct request {struct bio* biotail; int cmd_flags; } ;
struct bio {int dummy; } ;


 int BIO_SEG_VALID ;
 int REQ_NOMERGE ;
 int bio_flagged (struct bio*,int ) ;
 scalar_t__ bio_sectors (struct bio*) ;
 int blk_recount_segments (struct request_queue*,struct bio*) ;
 scalar_t__ blk_rq_get_max_sectors (struct request*) ;
 scalar_t__ blk_rq_sectors (struct request*) ;
 int ll_new_hw_segment (struct request_queue*,struct request*,struct bio*) ;

int ll_back_merge_fn(struct request_queue *q, struct request *req,
       struct bio *bio)
{
 if (blk_rq_sectors(req) + bio_sectors(bio) >
     blk_rq_get_max_sectors(req)) {
  req->cmd_flags |= REQ_NOMERGE;
  if (req == q->last_merge)
   q->last_merge = ((void*)0);
  return 0;
 }
 if (!bio_flagged(req->biotail, BIO_SEG_VALID))
  blk_recount_segments(q, req->biotail);
 if (!bio_flagged(bio, BIO_SEG_VALID))
  blk_recount_segments(q, bio);

 return ll_new_hw_segment(q, req, bio);
}
