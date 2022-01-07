
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct request {int __data_len; struct bio* biotail; int bio; } ;
struct bio {scalar_t__ bi_size; struct bio* bi_next; } ;


 int EINVAL ;
 int blk_rq_bio_prep (struct request_queue*,struct request*,struct bio*) ;
 int ll_back_merge_fn (struct request_queue*,struct request*,struct bio*) ;

int blk_rq_append_bio(struct request_queue *q, struct request *rq,
        struct bio *bio)
{
 if (!rq->bio)
  blk_rq_bio_prep(q, rq, bio);
 else if (!ll_back_merge_fn(q, rq, bio))
  return -EINVAL;
 else {
  rq->biotail->bi_next = bio;
  rq->biotail = bio;

  rq->__data_len += bio->bi_size;
 }
 return 0;
}
