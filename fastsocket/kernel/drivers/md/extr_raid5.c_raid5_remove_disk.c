
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r5conf {int raid_disks; scalar_t__ reshape_progress; scalar_t__ recovery_disabled; struct disk_info* disks; } ;
struct mddev {scalar_t__ recovery_disabled; struct r5conf* private; } ;
struct md_rdev {int raid_disk; int flags; int nr_pending; } ;
struct disk_info {struct md_rdev* replacement; struct md_rdev* rdev; } ;


 int EBUSY ;
 int Faulty ;
 int In_sync ;
 scalar_t__ MaxSector ;
 int Replacement ;
 int WantReplacement ;
 scalar_t__ atomic_read (int *) ;
 int clear_bit (int ,int *) ;
 int has_failed (struct r5conf*) ;
 int print_raid5_conf (struct r5conf*) ;
 int smp_mb () ;
 int synchronize_rcu () ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int raid5_remove_disk(struct mddev *mddev, struct md_rdev *rdev)
{
 struct r5conf *conf = mddev->private;
 int err = 0;
 int number = rdev->raid_disk;
 struct md_rdev **rdevp;
 struct disk_info *p = conf->disks + number;

 print_raid5_conf(conf);
 if (rdev == p->rdev)
  rdevp = &p->rdev;
 else if (rdev == p->replacement)
  rdevp = &p->replacement;
 else
  return 0;

 if (number >= conf->raid_disks &&
     conf->reshape_progress == MaxSector)
  clear_bit(In_sync, &rdev->flags);

 if (test_bit(In_sync, &rdev->flags) ||
     atomic_read(&rdev->nr_pending)) {
  err = -EBUSY;
  goto abort;
 }



 if (!test_bit(Faulty, &rdev->flags) &&
     mddev->recovery_disabled != conf->recovery_disabled &&
     !has_failed(conf) &&
     (!p->replacement || p->replacement == rdev) &&
     number < conf->raid_disks) {
  err = -EBUSY;
  goto abort;
 }
 *rdevp = ((void*)0);
 synchronize_rcu();
 if (atomic_read(&rdev->nr_pending)) {

  err = -EBUSY;
  *rdevp = rdev;
 } else if (p->replacement) {

  p->rdev = p->replacement;
  clear_bit(Replacement, &p->replacement->flags);
  smp_mb();


  p->replacement = ((void*)0);
  clear_bit(WantReplacement, &rdev->flags);
 } else



  clear_bit(WantReplacement, &rdev->flags);
abort:

 print_raid5_conf(conf);
 return err;
}
