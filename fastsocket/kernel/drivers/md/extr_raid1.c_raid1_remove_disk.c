
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raid1_info {struct md_rdev* rdev; } ;
struct r1conf {int raid_disks; scalar_t__ recovery_disabled; struct raid1_info* mirrors; } ;
struct mddev {scalar_t__ recovery_disabled; int degraded; struct r1conf* private; } ;
struct md_rdev {int raid_disk; int flags; int nr_pending; } ;


 int EBUSY ;
 int Faulty ;
 int In_sync ;
 int Replacement ;
 int WantReplacement ;
 scalar_t__ atomic_read (int *) ;
 int clear_bit (int ,int *) ;
 int freeze_array (struct r1conf*,int ) ;
 int md_integrity_register (struct mddev*) ;
 int print_conf (struct r1conf*) ;
 int synchronize_rcu () ;
 scalar_t__ test_bit (int ,int *) ;
 int unfreeze_array (struct r1conf*) ;

__attribute__((used)) static int raid1_remove_disk(struct mddev *mddev, struct md_rdev *rdev)
{
 struct r1conf *conf = mddev->private;
 int err = 0;
 int number = rdev->raid_disk;
 struct raid1_info *p = conf->mirrors + number;

 if (rdev != p->rdev)
  p = conf->mirrors + conf->raid_disks + number;

 print_conf(conf);
 if (rdev == p->rdev) {
  if (test_bit(In_sync, &rdev->flags) ||
      atomic_read(&rdev->nr_pending)) {
   err = -EBUSY;
   goto abort;
  }



  if (!test_bit(Faulty, &rdev->flags) &&
      mddev->recovery_disabled != conf->recovery_disabled &&
      mddev->degraded < conf->raid_disks) {
   err = -EBUSY;
   goto abort;
  }
  p->rdev = ((void*)0);
  synchronize_rcu();
  if (atomic_read(&rdev->nr_pending)) {

   err = -EBUSY;
   p->rdev = rdev;
   goto abort;
  } else if (conf->mirrors[conf->raid_disks + number].rdev) {




   struct md_rdev *repl =
    conf->mirrors[conf->raid_disks + number].rdev;
   freeze_array(conf, 0);
   clear_bit(Replacement, &repl->flags);
   p->rdev = repl;
   conf->mirrors[conf->raid_disks + number].rdev = ((void*)0);
   unfreeze_array(conf);
   clear_bit(WantReplacement, &rdev->flags);
  } else
   clear_bit(WantReplacement, &rdev->flags);
  err = md_integrity_register(mddev);
 }
abort:

 print_conf(conf);
 return err;
}
