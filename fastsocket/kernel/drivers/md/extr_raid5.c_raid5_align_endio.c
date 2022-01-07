
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r5conf {int wait_for_stripe; int active_aligned_reads; int mddev; } ;
struct mddev {struct r5conf* private; } ;
struct md_rdev {struct mddev* mddev; } ;
struct bio {int bi_bdev; int * bi_next; int bi_flags; struct bio* bi_private; } ;


 int BIO_UPTODATE ;
 int add_bio_to_retry (struct bio*,struct r5conf*) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int bdev_get_queue (int ) ;
 int bio_endio (struct bio*,int ) ;
 int bio_put (struct bio*) ;
 int pr_debug (char*) ;
 int rdev_dec_pending (struct md_rdev*,int ) ;
 int test_bit (int ,int *) ;
 int trace_block_bio_complete (int ,struct bio*) ;
 int wake_up (int *) ;

__attribute__((used)) static void raid5_align_endio(struct bio *bi, int error)
{
 struct bio* raid_bi = bi->bi_private;
 struct mddev *mddev;
 struct r5conf *conf;
 int uptodate = test_bit(BIO_UPTODATE, &bi->bi_flags);
 struct md_rdev *rdev;

 bio_put(bi);

 rdev = (void*)raid_bi->bi_next;
 raid_bi->bi_next = ((void*)0);
 mddev = rdev->mddev;
 conf = mddev->private;

 rdev_dec_pending(rdev, conf->mddev);

 if (!error && uptodate) {
  trace_block_bio_complete(bdev_get_queue(raid_bi->bi_bdev),
      raid_bi);
  bio_endio(raid_bi, 0);
  if (atomic_dec_and_test(&conf->active_aligned_reads))
   wake_up(&conf->wait_for_stripe);
  return;
 }


 pr_debug("raid5_align_endio : io error...handing IO for a retry\n");

 add_bio_to_retry(raid_bi, conf);
}
