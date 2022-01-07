
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct md_rdev {scalar_t__ sb_start; scalar_t__ new_data_offset; scalar_t__ data_offset; TYPE_1__* mddev; scalar_t__ bdev; scalar_t__ meta_bdev; } ;
struct completion {int dummy; } ;
struct bio {int bi_flags; int bi_end_io; struct completion* bi_private; scalar_t__ bi_sector; scalar_t__ bi_bdev; } ;
typedef scalar_t__ sector_t ;
struct TYPE_2__ {scalar_t__ reshape_position; int reshape_backwards; } ;


 int BIO_RW_SYNCIO ;
 int BIO_RW_UNPLUG ;
 int BIO_UPTODATE ;
 int GFP_NOIO ;
 scalar_t__ MaxSector ;
 int bi_complete ;
 int bio_add_page (struct bio*,struct page*,int,int ) ;
 struct bio* bio_alloc_mddev (int ,int,TYPE_1__*) ;
 int bio_put (struct bio*) ;
 int init_completion (struct completion*) ;
 int submit_bio (int,struct bio*) ;
 int test_bit (int ,int *) ;
 int wait_for_completion (struct completion*) ;

int sync_page_io(struct md_rdev *rdev, sector_t sector, int size,
   struct page *page, int rw, bool metadata_op)
{
 struct bio *bio = bio_alloc_mddev(GFP_NOIO, 1, rdev->mddev);
 struct completion event;
 int ret;

 rw |= (1 << BIO_RW_SYNCIO) | (1 << BIO_RW_UNPLUG);

 bio->bi_bdev = (metadata_op && rdev->meta_bdev) ?
  rdev->meta_bdev : rdev->bdev;
 if (metadata_op)
  bio->bi_sector = sector + rdev->sb_start;
 else if (rdev->mddev->reshape_position != MaxSector &&
   (rdev->mddev->reshape_backwards ==
    (sector >= rdev->mddev->reshape_position)))
  bio->bi_sector = sector + rdev->new_data_offset;
 else
  bio->bi_sector = sector + rdev->data_offset;
 bio_add_page(bio, page, size, 0);
 init_completion(&event);
 bio->bi_private = &event;
 bio->bi_end_io = bi_complete;
 submit_bio(rw, bio);
 wait_for_completion(&event);

 ret = test_bit(BIO_UPTODATE, &bio->bi_flags);
 bio_put(bio);
 return ret;
}
