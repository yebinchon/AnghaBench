
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r5conf {int raid_disks; int chunk_sectors; int algorithm; TYPE_1__* disks; int device_lock; } ;
struct mddev {scalar_t__ delta_disks; scalar_t__ reshape_backwards; int reshape_position; int chunk_sectors; int layout; int degraded; int gendisk; int array_sectors; int recovery; struct r5conf* private; } ;
struct md_rdev {int flags; } ;
struct TYPE_2__ {struct md_rdev* replacement; struct md_rdev* rdev; } ;


 int In_sync ;
 int MD_RECOVERY_INTR ;
 int MaxSector ;
 int calc_degraded (struct r5conf*) ;
 int clear_bit (int ,int *) ;
 int md_set_array_sectors (struct mddev*,int ) ;
 int raid5_size (struct mddev*,int ,int ) ;
 int revalidate_disk (int ) ;
 int set_capacity (int ,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void raid5_finish_reshape(struct mddev *mddev)
{
 struct r5conf *conf = mddev->private;

 if (!test_bit(MD_RECOVERY_INTR, &mddev->recovery)) {

  if (mddev->delta_disks > 0) {
   md_set_array_sectors(mddev, raid5_size(mddev, 0, 0));
   set_capacity(mddev->gendisk, mddev->array_sectors);
   revalidate_disk(mddev->gendisk);
  } else {
   int d;
   spin_lock_irq(&conf->device_lock);
   mddev->degraded = calc_degraded(conf);
   spin_unlock_irq(&conf->device_lock);
   for (d = conf->raid_disks ;
        d < conf->raid_disks - mddev->delta_disks;
        d++) {
    struct md_rdev *rdev = conf->disks[d].rdev;
    if (rdev)
     clear_bit(In_sync, &rdev->flags);
    rdev = conf->disks[d].replacement;
    if (rdev)
     clear_bit(In_sync, &rdev->flags);
   }
  }
  mddev->layout = conf->algorithm;
  mddev->chunk_sectors = conf->chunk_sectors;
  mddev->reshape_position = MaxSector;
  mddev->delta_disks = 0;
  mddev->reshape_backwards = 0;
 }
}
