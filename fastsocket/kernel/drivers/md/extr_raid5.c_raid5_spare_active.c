
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct r5conf {int raid_disks; int device_lock; struct disk_info* disks; } ;
struct mddev {int degraded; struct r5conf* private; } ;
struct disk_info {TYPE_2__* rdev; TYPE_1__* replacement; } ;
struct TYPE_4__ {scalar_t__ recovery_offset; int sysfs_state; int flags; } ;
struct TYPE_3__ {scalar_t__ recovery_offset; int sysfs_state; int flags; } ;


 int Faulty ;
 int In_sync ;
 scalar_t__ MaxSector ;
 int calc_degraded (struct r5conf*) ;
 int print_raid5_conf (struct r5conf*) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sysfs_notify_dirent_safe (int ) ;
 int test_and_clear_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int raid5_spare_active(struct mddev *mddev)
{
 int i;
 struct r5conf *conf = mddev->private;
 struct disk_info *tmp;
 int count = 0;
 unsigned long flags;

 for (i = 0; i < conf->raid_disks; i++) {
  tmp = conf->disks + i;
  if (tmp->replacement
      && tmp->replacement->recovery_offset == MaxSector
      && !test_bit(Faulty, &tmp->replacement->flags)
      && !test_and_set_bit(In_sync, &tmp->replacement->flags)) {

   if (!tmp->rdev
       || !test_and_clear_bit(In_sync, &tmp->rdev->flags))
    count++;
   if (tmp->rdev) {




    set_bit(Faulty, &tmp->rdev->flags);
    sysfs_notify_dirent_safe(
     tmp->rdev->sysfs_state);
   }
   sysfs_notify_dirent_safe(tmp->replacement->sysfs_state);
  } else if (tmp->rdev
      && tmp->rdev->recovery_offset == MaxSector
      && !test_bit(Faulty, &tmp->rdev->flags)
      && !test_and_set_bit(In_sync, &tmp->rdev->flags)) {
   count++;
   sysfs_notify_dirent_safe(tmp->rdev->sysfs_state);
  }
 }
 spin_lock_irqsave(&conf->device_lock, flags);
 mddev->degraded = calc_degraded(conf);
 spin_unlock_irqrestore(&conf->device_lock, flags);
 print_raid5_conf(conf);
 return count;
}
