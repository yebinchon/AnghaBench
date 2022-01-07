
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct r10conf {int mddev; TYPE_2__* mirrors; } ;
struct r10bio {int read_slot; int remaining; int state; int sectors; struct bio* master_bio; TYPE_1__* mddev; } ;
struct bio {int bi_flags; struct r10bio* bi_private; } ;
struct TYPE_6__ {int corrected_errors; } ;
struct TYPE_5__ {TYPE_3__* rdev; } ;
struct TYPE_4__ {struct r10conf* private; } ;


 int BIO_UPTODATE ;
 int R10BIO_IsRecover ;
 int R10BIO_Uptodate ;
 int atomic_add (int ,int *) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int find_bio_disk (struct r10conf*,struct r10bio*,struct bio*,int *,int *) ;
 int rdev_dec_pending (TYPE_3__*,int ) ;
 int reschedule_retry (struct r10bio*) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void end_sync_read(struct bio *bio, int error)
{
 struct r10bio *r10_bio = bio->bi_private;
 struct r10conf *conf = r10_bio->mddev->private;
 int d;

 if (bio == r10_bio->master_bio) {

  d = r10_bio->read_slot;
 } else
  d = find_bio_disk(conf, r10_bio, bio, ((void*)0), ((void*)0));

 if (test_bit(BIO_UPTODATE, &bio->bi_flags))
  set_bit(R10BIO_Uptodate, &r10_bio->state);
 else



  atomic_add(r10_bio->sectors,
      &conf->mirrors[d].rdev->corrected_errors);




 rdev_dec_pending(conf->mirrors[d].rdev, conf->mddev);
 if (test_bit(R10BIO_IsRecover, &r10_bio->state) ||
     atomic_dec_and_test(&r10_bio->remaining)) {



  reschedule_retry(r10_bio);
 }
}
