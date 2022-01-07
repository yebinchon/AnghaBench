
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct r10conf {TYPE_1__* mirrors; } ;
struct r10bio {int state; int sectors; TYPE_3__* devs; struct mddev* mddev; } ;
struct mddev {struct r10conf* private; } ;
struct md_rdev {TYPE_2__* mddev; int flags; } ;
struct bio {struct r10bio* bi_private; int bi_flags; } ;
typedef int sector_t ;
struct TYPE_6__ {int addr; } ;
struct TYPE_5__ {int recovery; } ;
struct TYPE_4__ {struct md_rdev* rdev; struct md_rdev* replacement; } ;


 int BIO_UPTODATE ;
 int MD_RECOVERY_NEEDED ;
 int R10BIO_MadeGood ;
 int R10BIO_WriteError ;
 int WantReplacement ;
 int WriteErrorSeen ;
 int end_sync_request (struct r10bio*) ;
 int find_bio_disk (struct r10conf*,struct r10bio*,struct bio*,int*,int*) ;
 scalar_t__ is_badblock (struct md_rdev*,int ,int ,int *,int*) ;
 int md_error (struct mddev*,struct md_rdev*) ;
 int rdev_dec_pending (struct md_rdev*,struct mddev*) ;
 int set_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void end_sync_write(struct bio *bio, int error)
{
 int uptodate = test_bit(BIO_UPTODATE, &bio->bi_flags);
 struct r10bio *r10_bio = bio->bi_private;
 struct mddev *mddev = r10_bio->mddev;
 struct r10conf *conf = mddev->private;
 int d;
 sector_t first_bad;
 int bad_sectors;
 int slot;
 int repl;
 struct md_rdev *rdev = ((void*)0);

 d = find_bio_disk(conf, r10_bio, bio, &slot, &repl);
 if (repl)
  rdev = conf->mirrors[d].replacement;
 else
  rdev = conf->mirrors[d].rdev;

 if (!uptodate) {
  if (repl)
   md_error(mddev, rdev);
  else {
   set_bit(WriteErrorSeen, &rdev->flags);
   if (!test_and_set_bit(WantReplacement, &rdev->flags))
    set_bit(MD_RECOVERY_NEEDED,
     &rdev->mddev->recovery);
   set_bit(R10BIO_WriteError, &r10_bio->state);
  }
 } else if (is_badblock(rdev,
        r10_bio->devs[slot].addr,
        r10_bio->sectors,
        &first_bad, &bad_sectors))
  set_bit(R10BIO_MadeGood, &r10_bio->state);

 rdev_dec_pending(rdev, mddev);

 end_sync_request(r10_bio);
}
