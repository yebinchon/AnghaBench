
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request {scalar_t__ rq_disk; scalar_t__ special; TYPE_1__* bio; } ;
struct bio {int bi_rw; TYPE_2__* bi_bdev; } ;
struct TYPE_4__ {scalar_t__ bd_disk; } ;
struct TYPE_3__ {int bi_rw; } ;


 int BIO_DISCARD ;
 scalar_t__ bio_data_dir (struct bio*) ;
 scalar_t__ bio_integrity (struct bio*) ;
 int bio_mergeable (struct bio*) ;
 scalar_t__ blk_integrity_rq (struct request*) ;
 scalar_t__ rq_data_dir (struct request*) ;
 int rq_mergeable (struct request*) ;

bool blk_rq_merge_ok(struct request *rq, struct bio *bio)
{
 if (!rq_mergeable(rq) || !bio_mergeable(bio))
  return 0;


 if ((bio->bi_rw & BIO_DISCARD) != (rq->bio->bi_rw & BIO_DISCARD))
  return 0;


 if (bio_data_dir(bio) != rq_data_dir(rq))
  return 0;


 if (rq->rq_disk != bio->bi_bdev->bd_disk || rq->special)
  return 0;


 if (bio_integrity(bio) != blk_integrity_rq(rq))
  return 0;

 return 1;
}
