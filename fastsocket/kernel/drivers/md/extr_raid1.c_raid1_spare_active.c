
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r1conf {int raid_disks; int device_lock; TYPE_1__* mirrors; } ;
struct mddev {int degraded; struct r1conf* private; } ;
struct md_rdev {scalar_t__ recovery_offset; int sysfs_state; int flags; } ;
struct TYPE_2__ {struct md_rdev* rdev; } ;


 int Faulty ;
 int In_sync ;
 scalar_t__ MaxSector ;
 int print_conf (struct r1conf*) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sysfs_notify_dirent_safe (int ) ;
 int test_and_clear_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int raid1_spare_active(struct mddev *mddev)
{
 int i;
 struct r1conf *conf = mddev->private;
 int count = 0;
 unsigned long flags;






 for (i = 0; i < conf->raid_disks; i++) {
  struct md_rdev *rdev = conf->mirrors[i].rdev;
  struct md_rdev *repl = conf->mirrors[conf->raid_disks + i].rdev;
  if (repl
      && repl->recovery_offset == MaxSector
      && !test_bit(Faulty, &repl->flags)
      && !test_and_set_bit(In_sync, &repl->flags)) {

   if (!rdev ||
       !test_and_clear_bit(In_sync, &rdev->flags))
    count++;
   if (rdev) {




    set_bit(Faulty, &rdev->flags);
    sysfs_notify_dirent_safe(
     rdev->sysfs_state);
   }
  }
  if (rdev
      && rdev->recovery_offset == MaxSector
      && !test_bit(Faulty, &rdev->flags)
      && !test_and_set_bit(In_sync, &rdev->flags)) {
   count++;
   sysfs_notify_dirent_safe(rdev->sysfs_state);
  }
 }
 spin_lock_irqsave(&conf->device_lock, flags);
 mddev->degraded -= count;
 spin_unlock_irqrestore(&conf->device_lock, flags);

 print_conf(conf);
 return count;
}
