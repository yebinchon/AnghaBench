
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct r10conf {TYPE_4__* mirrors; } ;
struct r10bio {TYPE_1__* devs; int state; } ;
struct mddev {struct r10conf* private; } ;
struct bio {scalar_t__ bi_end_io; } ;
struct TYPE_8__ {TYPE_3__* replacement; TYPE_2__* rdev; } ;
struct TYPE_7__ {int bdev; int nr_pending; } ;
struct TYPE_6__ {int bdev; int nr_pending; } ;
struct TYPE_5__ {int devnum; struct bio* repl_bio; struct bio* bio; } ;


 int R10BIO_Uptodate ;
 int atomic_inc (int *) ;
 int bio_sectors (struct bio*) ;
 int end_sync_request (struct r10bio*) ;
 int fix_recovery_read_error (struct r10bio*) ;
 int generic_make_request (struct bio*) ;
 int md_sync_acct (int ,int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void recovery_request_write(struct mddev *mddev, struct r10bio *r10_bio)
{
 struct r10conf *conf = mddev->private;
 int d;
 struct bio *wbio, *wbio2;

 if (!test_bit(R10BIO_Uptodate, &r10_bio->state)) {
  fix_recovery_read_error(r10_bio);
  end_sync_request(r10_bio);
  return;
 }





 d = r10_bio->devs[1].devnum;
 wbio = r10_bio->devs[1].bio;
 wbio2 = r10_bio->devs[1].repl_bio;




 if (wbio2 && !wbio2->bi_end_io)
  wbio2 = ((void*)0);
 if (wbio->bi_end_io) {
  atomic_inc(&conf->mirrors[d].rdev->nr_pending);
  md_sync_acct(conf->mirrors[d].rdev->bdev, bio_sectors(wbio));
  generic_make_request(wbio);
 }
 if (wbio2) {
  atomic_inc(&conf->mirrors[d].replacement->nr_pending);
  md_sync_acct(conf->mirrors[d].replacement->bdev,
        bio_sectors(wbio2));
  generic_make_request(wbio2);
 }
}
