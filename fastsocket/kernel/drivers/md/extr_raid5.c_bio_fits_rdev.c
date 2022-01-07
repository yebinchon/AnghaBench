
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {scalar_t__ merge_bvec_fn; } ;
struct bio {scalar_t__ bi_phys_segments; int bi_bdev; } ;


 struct request_queue* bdev_get_queue (int ) ;
 scalar_t__ bio_sectors (struct bio*) ;
 int blk_recount_segments (struct request_queue*,struct bio*) ;
 scalar_t__ queue_max_sectors (struct request_queue*) ;
 scalar_t__ queue_max_segments (struct request_queue*) ;

__attribute__((used)) static int bio_fits_rdev(struct bio *bi)
{
 struct request_queue *q = bdev_get_queue(bi->bi_bdev);

 if (bio_sectors(bi) > queue_max_sectors(q))
  return 0;
 blk_recount_segments(q, bi);
 if (bi->bi_phys_segments > queue_max_segments(q))
  return 0;

 if (q->merge_bvec_fn)



  return 0;

 return 1;
}
