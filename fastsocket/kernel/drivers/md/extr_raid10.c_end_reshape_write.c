
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r10conf {TYPE_1__* mirrors; } ;
struct r10bio {struct mddev* mddev; } ;
struct mddev {struct r10conf* private; } ;
struct md_rdev {int dummy; } ;
struct bio {struct r10bio* bi_private; int bi_flags; } ;
struct TYPE_2__ {struct md_rdev* rdev; struct md_rdev* replacement; } ;


 int BIO_UPTODATE ;
 int end_reshape_request (struct r10bio*) ;
 int find_bio_disk (struct r10conf*,struct r10bio*,struct bio*,int*,int*) ;
 int md_error (struct mddev*,struct md_rdev*) ;
 int rdev_dec_pending (struct md_rdev*,struct mddev*) ;
 int smp_mb () ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void end_reshape_write(struct bio *bio, int error)
{
 int uptodate = test_bit(BIO_UPTODATE, &bio->bi_flags);
 struct r10bio *r10_bio = bio->bi_private;
 struct mddev *mddev = r10_bio->mddev;
 struct r10conf *conf = mddev->private;
 int d;
 int slot;
 int repl;
 struct md_rdev *rdev = ((void*)0);

 d = find_bio_disk(conf, r10_bio, bio, &slot, &repl);
 if (repl)
  rdev = conf->mirrors[d].replacement;
 if (!rdev) {
  smp_mb();
  rdev = conf->mirrors[d].rdev;
 }

 if (!uptodate) {

  md_error(mddev, rdev);
 }

 rdev_dec_pending(rdev, mddev);
 end_reshape_request(r10_bio);
}
