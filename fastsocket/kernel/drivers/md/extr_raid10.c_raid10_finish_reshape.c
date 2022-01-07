
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int raid_disks; int chunk_shift; } ;
struct r10conf {TYPE_2__ geo; TYPE_1__* mirrors; } ;
struct mddev {scalar_t__ delta_disks; int chunk_sectors; scalar_t__ reshape_backwards; int reshape_position; int new_layout; int layout; int gendisk; int array_sectors; int resync_max_sectors; int recovery; int recovery_cp; struct r10conf* private; } ;
struct md_rdev {int flags; } ;
typedef int sector_t ;
struct TYPE_3__ {struct md_rdev* replacement; struct md_rdev* rdev; } ;


 int In_sync ;
 int MD_RECOVERY_INTR ;
 int MD_RECOVERY_NEEDED ;
 int MaxSector ;
 int clear_bit (int ,int *) ;
 int md_set_array_sectors (struct mddev*,int ) ;
 int raid10_size (struct mddev*,int ,int ) ;
 int revalidate_disk (int ) ;
 int set_bit (int ,int *) ;
 int set_capacity (int ,int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void raid10_finish_reshape(struct mddev *mddev)
{
 struct r10conf *conf = mddev->private;

 if (test_bit(MD_RECOVERY_INTR, &mddev->recovery))
  return;

 if (mddev->delta_disks > 0) {
  sector_t size = raid10_size(mddev, 0, 0);
  md_set_array_sectors(mddev, size);
  if (mddev->recovery_cp > mddev->resync_max_sectors) {
   mddev->recovery_cp = mddev->resync_max_sectors;
   set_bit(MD_RECOVERY_NEEDED, &mddev->recovery);
  }
  mddev->resync_max_sectors = size;
  set_capacity(mddev->gendisk, mddev->array_sectors);
  revalidate_disk(mddev->gendisk);
 } else {
  int d;
  for (d = conf->geo.raid_disks ;
       d < conf->geo.raid_disks - mddev->delta_disks;
       d++) {
   struct md_rdev *rdev = conf->mirrors[d].rdev;
   if (rdev)
    clear_bit(In_sync, &rdev->flags);
   rdev = conf->mirrors[d].replacement;
   if (rdev)
    clear_bit(In_sync, &rdev->flags);
  }
 }
 mddev->layout = mddev->new_layout;
 mddev->chunk_sectors = 1 << conf->geo.chunk_shift;
 mddev->reshape_position = MaxSector;
 mddev->delta_disks = 0;
 mddev->reshape_backwards = 0;
}
