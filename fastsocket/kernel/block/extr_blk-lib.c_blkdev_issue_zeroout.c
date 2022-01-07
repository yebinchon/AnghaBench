
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_device {int dummy; } ;
struct bio_batch {int flags; int done; int * wait; } ;
struct bio {struct bio_batch* bi_private; int bi_end_io; struct block_device* bi_bdev; scalar_t__ bi_sector; } ;
typedef scalar_t__ sector_t ;
typedef int gfp_t ;


 scalar_t__ BIO_MAX_PAGES ;
 int BIO_UPTODATE ;
 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int EIO ;
 int ENOMEM ;
 scalar_t__ PAGE_SIZE ;
 int WRITE ;
 int ZERO_PAGE (int ) ;
 int atomic_dec_and_test (int *) ;
 int atomic_inc (int *) ;
 int atomic_set (int *,int) ;
 int bio_add_page (struct bio*,int ,unsigned int,int ) ;
 struct bio* bio_alloc (int ,unsigned int) ;
 int bio_batch_end_io ;
 unsigned int min (scalar_t__,scalar_t__) ;
 int submit_bio (int ,struct bio*) ;
 int test_bit (int,int*) ;
 int wait ;
 int wait_for_completion (int *) ;

int blkdev_issue_zeroout(struct block_device *bdev, sector_t sector,
   sector_t nr_sects, gfp_t gfp_mask)
{
 int ret;
 struct bio *bio;
 struct bio_batch bb;
 unsigned int sz;
 DECLARE_COMPLETION_ONSTACK(wait);

 atomic_set(&bb.done, 1);
 bb.flags = 1 << BIO_UPTODATE;
 bb.wait = &wait;

 ret = 0;
 while (nr_sects != 0) {
  bio = bio_alloc(gfp_mask,
    min(nr_sects, (sector_t)BIO_MAX_PAGES));
  if (!bio) {
   ret = -ENOMEM;
   break;
  }

  bio->bi_sector = sector;
  bio->bi_bdev = bdev;
  bio->bi_end_io = bio_batch_end_io;
  bio->bi_private = &bb;

  while (nr_sects != 0) {
   sz = min((sector_t) PAGE_SIZE >> 9 , nr_sects);
   ret = bio_add_page(bio, ZERO_PAGE(0), sz << 9, 0);
   nr_sects -= ret >> 9;
   sector += ret >> 9;
   if (ret < (sz << 9))
    break;
  }
  ret = 0;
  atomic_inc(&bb.done);
  submit_bio(WRITE, bio);
 }


 if (!atomic_dec_and_test(&bb.done))
  wait_for_completion(&wait);

 if (!test_bit(BIO_UPTODATE, &bb.flags))

  ret = -EIO;

 return ret;
}
