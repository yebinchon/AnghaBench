
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct stripe_head_state {scalar_t__ replacing; scalar_t__ syncing; } ;
struct stripe_head {size_t pd_idx; int sector; TYPE_1__* dev; int state; } ;
struct r5conf {int raid_disks; TYPE_3__* mddev; int recovery_disabled; TYPE_2__* disks; int wait_for_overlap; } ;
struct md_rdev {int flags; } ;
struct TYPE_6__ {int recovery_disabled; int recovery; } ;
struct TYPE_5__ {struct md_rdev* replacement; struct md_rdev* rdev; } ;
struct TYPE_4__ {int flags; } ;


 int Faulty ;
 int In_sync ;
 int MD_RECOVERY_RECOVER ;
 int R5_Overlap ;
 int STRIPE_SECTORS ;
 int STRIPE_SYNCING ;
 int clear_bit (int ,int *) ;
 int md_done_sync (TYPE_3__*,int ,int) ;
 int rdev_set_badblocks (struct md_rdev*,int ,int ,int ) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void
handle_failed_sync(struct r5conf *conf, struct stripe_head *sh,
     struct stripe_head_state *s)
{
 int abort = 0;
 int i;

 clear_bit(STRIPE_SYNCING, &sh->state);
 if (test_and_clear_bit(R5_Overlap, &sh->dev[sh->pd_idx].flags))
  wake_up(&conf->wait_for_overlap);
 s->syncing = 0;
 s->replacing = 0;







 if (test_bit(MD_RECOVERY_RECOVER, &conf->mddev->recovery)) {



  for (i = 0; i < conf->raid_disks; i++) {
   struct md_rdev *rdev = conf->disks[i].rdev;
   if (rdev
       && !test_bit(Faulty, &rdev->flags)
       && !test_bit(In_sync, &rdev->flags)
       && !rdev_set_badblocks(rdev, sh->sector,
         STRIPE_SECTORS, 0))
    abort = 1;
   rdev = conf->disks[i].replacement;
   if (rdev
       && !test_bit(Faulty, &rdev->flags)
       && !test_bit(In_sync, &rdev->flags)
       && !rdev_set_badblocks(rdev, sh->sector,
         STRIPE_SECTORS, 0))
    abort = 1;
  }
  if (abort)
   conf->recovery_disabled =
    conf->mddev->recovery_disabled;
 }
 md_done_sync(conf->mddev, STRIPE_SECTORS, !abort);
}
