
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct mddev {int pending_writes; } ;
struct md_rdev {scalar_t__ bdev; scalar_t__ meta_bdev; } ;
struct bio {int bi_end_io; struct md_rdev* bi_private; int bi_sector; scalar_t__ bi_bdev; } ;
typedef int sector_t ;


 int BIO_RW_NOIDLE ;
 int GFP_NOIO ;
 int WRITE_FLUSH_FUA ;
 int atomic_inc (int *) ;
 int bio_add_page (struct bio*,struct page*,int,int ) ;
 struct bio* bio_alloc_mddev (int ,int,struct mddev*) ;
 int submit_bio (int,struct bio*) ;
 int super_written ;

void md_super_write(struct mddev *mddev, struct md_rdev *rdev,
     sector_t sector, int size, struct page *page)
{






 struct bio *bio = bio_alloc_mddev(GFP_NOIO, 1, mddev);

 bio->bi_bdev = rdev->meta_bdev ? rdev->meta_bdev : rdev->bdev;
 bio->bi_sector = sector;
 bio_add_page(bio, page, size, 0);
 bio->bi_private = rdev;
 bio->bi_end_io = super_written;

 atomic_inc(&mddev->pending_writes);
 submit_bio((WRITE_FLUSH_FUA & ~(1 << BIO_RW_NOIDLE)), bio);
}
