
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stripe_head {int state; } ;
struct r5conf {int quiesce; scalar_t__ max_degraded; int raid_disks; TYPE_1__* disks; scalar_t__ fullsync; int wait_for_overlap; } ;
struct mddev {scalar_t__ dev_sectors; scalar_t__ curr_resync; scalar_t__ degraded; int bitmap; int recovery; struct r5conf* private; } ;
typedef scalar_t__ sector_t ;
struct TYPE_2__ {int * rdev; } ;


 int MD_RECOVERY_REQUESTED ;
 int MD_RECOVERY_RESHAPE ;
 int MD_RECOVERY_SYNC ;
 scalar_t__ STRIPE_SECTORS ;
 int STRIPE_SYNC_REQUESTED ;
 int bitmap_close_sync (int ) ;
 int bitmap_cond_end_sync (int ,scalar_t__) ;
 int bitmap_end_sync (int ,scalar_t__,scalar_t__*,int) ;
 int bitmap_start_sync (int ,scalar_t__,scalar_t__*,int) ;
 int end_reshape (struct r5conf*) ;
 struct stripe_head* get_active_stripe (struct r5conf*,scalar_t__,int ,int,int ) ;
 int handle_stripe (struct stripe_head*) ;
 int release_stripe (struct stripe_head*) ;
 scalar_t__ reshape_request (struct mddev*,scalar_t__,int*) ;
 int schedule_timeout_uninterruptible (int) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int unplug_slaves (struct mddev*) ;
 int wait_event (int ,int) ;

__attribute__((used)) static inline sector_t sync_request(struct mddev *mddev, sector_t sector_nr, int *skipped, int go_faster)
{
 struct r5conf *conf = mddev->private;
 struct stripe_head *sh;
 sector_t max_sector = mddev->dev_sectors;
 sector_t sync_blocks;
 int still_degraded = 0;
 int i;

 if (sector_nr >= max_sector) {

  unplug_slaves(mddev);

  if (test_bit(MD_RECOVERY_RESHAPE, &mddev->recovery)) {
   end_reshape(conf);
   return 0;
  }

  if (mddev->curr_resync < max_sector)
   bitmap_end_sync(mddev->bitmap, mddev->curr_resync,
     &sync_blocks, 1);
  else
   conf->fullsync = 0;
  bitmap_close_sync(mddev->bitmap);

  return 0;
 }


 wait_event(conf->wait_for_overlap, conf->quiesce != 2);

 if (test_bit(MD_RECOVERY_RESHAPE, &mddev->recovery))
  return reshape_request(mddev, sector_nr, skipped);
 if (mddev->degraded >= conf->max_degraded &&
     test_bit(MD_RECOVERY_SYNC, &mddev->recovery)) {
  sector_t rv = mddev->dev_sectors - sector_nr;
  *skipped = 1;
  return rv;
 }
 if (!test_bit(MD_RECOVERY_REQUESTED, &mddev->recovery) &&
     !conf->fullsync &&
     !bitmap_start_sync(mddev->bitmap, sector_nr, &sync_blocks, 1) &&
     sync_blocks >= STRIPE_SECTORS) {

  sync_blocks /= STRIPE_SECTORS;
  *skipped = 1;
  return sync_blocks * STRIPE_SECTORS;
 }

 bitmap_cond_end_sync(mddev->bitmap, sector_nr);

 sh = get_active_stripe(conf, sector_nr, 0, 1, 0);
 if (sh == ((void*)0)) {
  sh = get_active_stripe(conf, sector_nr, 0, 0, 0);



  schedule_timeout_uninterruptible(1);
 }




 for (i = 0; i < conf->raid_disks; i++)
  if (conf->disks[i].rdev == ((void*)0))
   still_degraded = 1;

 bitmap_start_sync(mddev->bitmap, sector_nr, &sync_blocks, still_degraded);

 set_bit(STRIPE_SYNC_REQUESTED, &sh->state);

 handle_stripe(sh);
 release_stripe(sh);

 return STRIPE_SECTORS;
}
