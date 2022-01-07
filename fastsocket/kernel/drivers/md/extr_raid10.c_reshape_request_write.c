
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct r10conf {int copies; TYPE_1__* mirrors; } ;
struct r10bio {int remaining; int sectors; TYPE_2__* devs; int state; } ;
struct mddev {struct r10conf* private; } ;
struct md_rdev {int nr_pending; int flags; } ;
struct bio {int * bi_next; int bi_bdev; } ;
struct TYPE_4__ {int devnum; struct bio* bio; struct bio* repl_bio; } ;
struct TYPE_3__ {struct md_rdev* rdev; struct md_rdev* replacement; } ;


 int Faulty ;
 int R10BIO_Uptodate ;
 int atomic_inc (int *) ;
 int atomic_set (int *,int) ;
 int end_reshape_request (struct r10bio*) ;
 int generic_make_request (struct bio*) ;
 scalar_t__ handle_reshape_read_error (struct mddev*,struct r10bio*) ;
 int md_done_sync (struct mddev*,int ,int ) ;
 int md_sync_acct (int ,int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void reshape_request_write(struct mddev *mddev, struct r10bio *r10_bio)
{





 struct r10conf *conf = mddev->private;
 int s;

 if (!test_bit(R10BIO_Uptodate, &r10_bio->state))
  if (handle_reshape_read_error(mddev, r10_bio) < 0) {

   md_done_sync(mddev, r10_bio->sectors, 0);
   return;
  }




 atomic_set(&r10_bio->remaining, 1);
 for (s = 0; s < conf->copies*2; s++) {
  struct bio *b;
  int d = r10_bio->devs[s/2].devnum;
  struct md_rdev *rdev;
  if (s&1) {
   rdev = conf->mirrors[d].replacement;
   b = r10_bio->devs[s/2].repl_bio;
  } else {
   rdev = conf->mirrors[d].rdev;
   b = r10_bio->devs[s/2].bio;
  }
  if (!rdev || test_bit(Faulty, &rdev->flags))
   continue;
  atomic_inc(&rdev->nr_pending);
  md_sync_acct(b->bi_bdev, r10_bio->sectors);
  atomic_inc(&r10_bio->remaining);
  b->bi_next = ((void*)0);
  generic_make_request(b);
 }
 end_reshape_request(r10_bio);
}
