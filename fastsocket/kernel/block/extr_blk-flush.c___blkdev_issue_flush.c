
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int make_request_fn; } ;
struct block_device {int * bd_disk; } ;
struct bio {int bi_sector; int * bi_private; struct block_device* bi_bdev; int bi_end_io; } ;
typedef int sector_t ;
typedef int gfp_t ;


 int BIO_UPTODATE ;
 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int EIO ;
 int ENXIO ;
 int WRITE_FLUSH ;
 struct request_queue* bdev_get_queue (struct block_device*) ;
 struct bio* bio_alloc (int ,int ) ;
 int bio_end_flush ;
 int bio_flagged (struct bio*,int ) ;
 int bio_get (struct bio*) ;
 int bio_put (struct bio*) ;
 int submit_bio (int ,struct bio*) ;
 int wait ;
 int wait_for_completion (int *) ;

int __blkdev_issue_flush(struct block_device *bdev, gfp_t gfp_mask,
  sector_t *error_sector)
{
 DECLARE_COMPLETION_ONSTACK(wait);
 struct request_queue *q;
 struct bio *bio;
 int ret = 0;

 if (bdev->bd_disk == ((void*)0))
  return -ENXIO;

 q = bdev_get_queue(bdev);
 if (!q)
  return -ENXIO;







 if (!q->make_request_fn)
  return -ENXIO;

 bio = bio_alloc(gfp_mask, 0);
 bio->bi_end_io = bio_end_flush;
 bio->bi_bdev = bdev;
 bio->bi_private = &wait;

 bio_get(bio);
 submit_bio(WRITE_FLUSH, bio);
 wait_for_completion(&wait);






 if (error_sector)
               *error_sector = bio->bi_sector;

 if (!bio_flagged(bio, BIO_UPTODATE))
  ret = -EIO;

 bio_put(bio);
 return ret;
}
