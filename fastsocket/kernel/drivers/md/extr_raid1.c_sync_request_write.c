
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct r1conf {int raid_disks; TYPE_2__* mirrors; } ;
struct r1bio {size_t read_disk; int sectors; int state; int remaining; struct bio** bios; } ;
struct mddev {int recovery; struct r1conf* private; } ;
struct bio {int * bi_end_io; int bi_rw; } ;
struct TYPE_4__ {TYPE_1__* rdev; } ;
struct TYPE_3__ {int bdev; } ;


 int MD_RECOVERY_REQUESTED ;
 int MD_RECOVERY_SYNC ;
 int R1BIO_MadeGood ;
 int R1BIO_Uptodate ;
 int R1BIO_WriteError ;
 int WRITE ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int atomic_inc (int *) ;
 int atomic_set (int *,int) ;
 int bio_sectors (struct bio*) ;
 int * end_sync_read ;
 int * end_sync_write ;
 int fix_sync_read_error (struct r1bio*) ;
 int generic_make_request (struct bio*) ;
 int md_done_sync (struct mddev*,int,int) ;
 int md_sync_acct (int ,int ) ;
 scalar_t__ process_checks (struct r1bio*) ;
 int put_buf (struct r1bio*) ;
 int reschedule_retry (struct r1bio*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void sync_request_write(struct mddev *mddev, struct r1bio *r1_bio)
{
 struct r1conf *conf = mddev->private;
 int i;
 int disks = conf->raid_disks * 2;
 struct bio *bio, *wbio;

 bio = r1_bio->bios[r1_bio->read_disk];

 if (!test_bit(R1BIO_Uptodate, &r1_bio->state))

  if (!fix_sync_read_error(r1_bio))
   return;

 if (test_bit(MD_RECOVERY_REQUESTED, &mddev->recovery))
  if (process_checks(r1_bio) < 0)
   return;



 atomic_set(&r1_bio->remaining, 1);
 for (i = 0; i < disks ; i++) {
  wbio = r1_bio->bios[i];
  if (wbio->bi_end_io == ((void*)0) ||
      (wbio->bi_end_io == end_sync_read &&
       (i == r1_bio->read_disk ||
        !test_bit(MD_RECOVERY_SYNC, &mddev->recovery))))
   continue;

  wbio->bi_rw = WRITE;
  wbio->bi_end_io = end_sync_write;
  atomic_inc(&r1_bio->remaining);
  md_sync_acct(conf->mirrors[i].rdev->bdev, bio_sectors(wbio));

  generic_make_request(wbio);
 }

 if (atomic_dec_and_test(&r1_bio->remaining)) {

  int s = r1_bio->sectors;
  if (test_bit(R1BIO_MadeGood, &r1_bio->state) ||
      test_bit(R1BIO_WriteError, &r1_bio->state))
   reschedule_retry(r1_bio);
  else {
   put_buf(r1_bio);
   md_done_sync(mddev, s, 1);
  }
 }
}
