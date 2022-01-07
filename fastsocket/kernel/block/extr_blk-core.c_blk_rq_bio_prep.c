
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct request {int cmd_flags; int rq_disk; struct bio* biotail; struct bio* bio; int __data_len; int buffer; int nr_phys_segments; } ;
struct bio {int bi_rw; TYPE_1__* bi_bdev; int bi_size; } ;
struct TYPE_2__ {int bd_disk; } ;


 int REQ_WRITE ;
 int bio_data (struct bio*) ;
 scalar_t__ bio_has_data (struct bio*) ;
 int bio_phys_segments (struct request_queue*,struct bio*) ;

void blk_rq_bio_prep(struct request_queue *q, struct request *rq,
       struct bio *bio)
{

 rq->cmd_flags |= bio->bi_rw & REQ_WRITE;

 if (bio_has_data(bio)) {
  rq->nr_phys_segments = bio_phys_segments(q, bio);
  rq->buffer = bio_data(bio);
 }
 rq->__data_len = bio->bi_size;
 rq->bio = rq->biotail = bio;

 if (bio->bi_bdev)
  rq->rq_disk = bio->bi_bdev->bd_disk;
}
