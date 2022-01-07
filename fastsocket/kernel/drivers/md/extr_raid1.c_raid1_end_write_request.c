
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct r1conf {TYPE_4__* mddev; TYPE_2__* mirrors; } ;
struct r1bio {int ** bios; struct bio* master_bio; int state; int remaining; int behind_remaining; int sectors; int sector; TYPE_1__* mddev; } ;
struct bio {scalar_t__ bi_sector; struct r1bio* bi_private; int bi_flags; } ;
typedef int sector_t ;
struct TYPE_9__ {int recovery; } ;
struct TYPE_8__ {int flags; } ;
struct TYPE_7__ {TYPE_3__* rdev; } ;
struct TYPE_6__ {struct r1conf* private; } ;


 int BIO_UPTODATE ;
 int Faulty ;
 int * IO_MADE_GOOD ;
 int In_sync ;
 int MD_RECOVERY_NEEDED ;
 int R1BIO_BehindIO ;
 int R1BIO_MadeGood ;
 int R1BIO_Returned ;
 int R1BIO_Uptodate ;
 int R1BIO_WriteError ;
 int WantReplacement ;
 int WriteErrorSeen ;
 int WriteMostly ;
 int atomic_dec (int *) ;
 int atomic_read (int *) ;
 int bio_put (struct bio*) ;
 scalar_t__ bio_sectors (struct bio*) ;
 int call_bio_endio (struct r1bio*) ;
 int find_bio_disk (struct r1bio*,struct bio*) ;
 scalar_t__ is_badblock (TYPE_3__*,int ,int ,int *,int*) ;
 int pr_debug (char*,unsigned long long,scalar_t__) ;
 int r1_bio_write_done (struct r1bio*) ;
 int rdev_dec_pending (TYPE_3__*,TYPE_4__*) ;
 int set_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void raid1_end_write_request(struct bio *bio, int error)
{
 int uptodate = test_bit(BIO_UPTODATE, &bio->bi_flags);
 struct r1bio *r1_bio = bio->bi_private;
 int mirror, behind = test_bit(R1BIO_BehindIO, &r1_bio->state);
 struct r1conf *conf = r1_bio->mddev->private;
 struct bio *to_put = ((void*)0);

 mirror = find_bio_disk(r1_bio, bio);




 if (!uptodate) {
  set_bit(WriteErrorSeen,
   &conf->mirrors[mirror].rdev->flags);
  if (!test_and_set_bit(WantReplacement,
          &conf->mirrors[mirror].rdev->flags))
   set_bit(MD_RECOVERY_NEEDED, &
    conf->mddev->recovery);

  set_bit(R1BIO_WriteError, &r1_bio->state);
 } else {
  sector_t first_bad;
  int bad_sectors;

  r1_bio->bios[mirror] = ((void*)0);
  to_put = bio;
  if (test_bit(In_sync, &conf->mirrors[mirror].rdev->flags) &&
      !test_bit(Faulty, &conf->mirrors[mirror].rdev->flags))
   set_bit(R1BIO_Uptodate, &r1_bio->state);


  if (is_badblock(conf->mirrors[mirror].rdev,
    r1_bio->sector, r1_bio->sectors,
    &first_bad, &bad_sectors)) {
   r1_bio->bios[mirror] = IO_MADE_GOOD;
   set_bit(R1BIO_MadeGood, &r1_bio->state);
  }
 }

 if (behind) {
  if (test_bit(WriteMostly, &conf->mirrors[mirror].rdev->flags))
   atomic_dec(&r1_bio->behind_remaining);
  if (atomic_read(&r1_bio->behind_remaining) >= (atomic_read(&r1_bio->remaining)-1) &&
      test_bit(R1BIO_Uptodate, &r1_bio->state)) {

   if (!test_and_set_bit(R1BIO_Returned, &r1_bio->state)) {
    struct bio *mbio = r1_bio->master_bio;
    pr_debug("raid1: behind end write sectors"
      " %llu-%llu\n",
      (unsigned long long) mbio->bi_sector,
      (unsigned long long) mbio->bi_sector +
      bio_sectors(mbio) - 1);
    call_bio_endio(r1_bio);
   }
  }
 }
 if (r1_bio->bios[mirror] == ((void*)0))
  rdev_dec_pending(conf->mirrors[mirror].rdev,
     conf->mddev);





 r1_bio_write_done(r1_bio);

 if (to_put)
  bio_put(to_put);
}
