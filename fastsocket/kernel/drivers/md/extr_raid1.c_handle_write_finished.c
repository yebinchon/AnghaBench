
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r1conf {int raid_disks; int mddev; TYPE_1__* mirrors; } ;
struct r1bio {int state; int ** bios; int sectors; int sector; } ;
struct md_rdev {int dummy; } ;
struct TYPE_2__ {struct md_rdev* rdev; } ;


 int * IO_MADE_GOOD ;
 int R1BIO_Degraded ;
 int R1BIO_WriteError ;
 int close_write (struct r1bio*) ;
 int md_error (int ,struct md_rdev*) ;
 int narrow_write_error (struct r1bio*,int) ;
 int raid_end_bio_io (struct r1bio*) ;
 int rdev_clear_badblocks (struct md_rdev*,int ,int ,int ) ;
 int rdev_dec_pending (struct md_rdev*,int ) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void handle_write_finished(struct r1conf *conf, struct r1bio *r1_bio)
{
 int m;
 for (m = 0; m < conf->raid_disks * 2 ; m++)
  if (r1_bio->bios[m] == IO_MADE_GOOD) {
   struct md_rdev *rdev = conf->mirrors[m].rdev;
   rdev_clear_badblocks(rdev,
          r1_bio->sector,
          r1_bio->sectors, 0);
   rdev_dec_pending(rdev, conf->mddev);
  } else if (r1_bio->bios[m] != ((void*)0)) {




   if (!narrow_write_error(r1_bio, m)) {
    md_error(conf->mddev,
      conf->mirrors[m].rdev);

    set_bit(R1BIO_Degraded, &r1_bio->state);
   }
   rdev_dec_pending(conf->mirrors[m].rdev,
      conf->mddev);
  }
 if (test_bit(R1BIO_WriteError, &r1_bio->state))
  close_write(r1_bio);
 raid_end_bio_io(r1_bio);
}
