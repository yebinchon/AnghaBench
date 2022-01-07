
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r5conf {scalar_t__ algorithm; int chunk_sectors; } ;
struct mddev {int new_chunk_sectors; scalar_t__ new_layout; int array_sectors; int raid_disks; scalar_t__ layout; int chunk_sectors; int thread; int flags; struct r5conf* private; } ;


 int EINVAL ;
 int MD_CHANGE_DEVS ;
 int PAGE_SIZE ;
 int algorithm_valid_raid5 (scalar_t__) ;
 int check_reshape (struct mddev*) ;
 int is_power_of_2 (int) ;
 int md_wakeup_thread (int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int raid5_check_reshape(struct mddev *mddev)
{





 struct r5conf *conf = mddev->private;
 int new_chunk = mddev->new_chunk_sectors;

 if (mddev->new_layout >= 0 && !algorithm_valid_raid5(mddev->new_layout))
  return -EINVAL;
 if (new_chunk > 0) {
  if (!is_power_of_2(new_chunk))
   return -EINVAL;
  if (new_chunk < (PAGE_SIZE>>9))
   return -EINVAL;
  if (mddev->array_sectors & (new_chunk-1))

   return -EINVAL;
 }



 if (mddev->raid_disks == 2) {

  if (mddev->new_layout >= 0) {
   conf->algorithm = mddev->new_layout;
   mddev->layout = mddev->new_layout;
  }
  if (new_chunk > 0) {
   conf->chunk_sectors = new_chunk ;
   mddev->chunk_sectors = new_chunk;
  }
  set_bit(MD_CHANGE_DEVS, &mddev->flags);
  md_wakeup_thread(mddev->thread);
 }
 return check_reshape(mddev);
}
