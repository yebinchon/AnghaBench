
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r5conf {int previous_raid_disks; int raid_disks; TYPE_1__* disks; } ;
struct md_rdev {int flags; } ;
struct TYPE_2__ {int replacement; int rdev; } ;


 int Faulty ;
 int In_sync ;
 struct md_rdev* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int calc_degraded(struct r5conf *conf)
{
 int degraded, degraded2;
 int i;

 rcu_read_lock();
 degraded = 0;
 for (i = 0; i < conf->previous_raid_disks; i++) {
  struct md_rdev *rdev = rcu_dereference(conf->disks[i].rdev);
  if (rdev && test_bit(Faulty, &rdev->flags))
   rdev = rcu_dereference(conf->disks[i].replacement);
  if (!rdev || test_bit(Faulty, &rdev->flags))
   degraded++;
  else if (test_bit(In_sync, &rdev->flags))
   ;
  else
   if (conf->raid_disks >= conf->previous_raid_disks)
    degraded++;
 }
 rcu_read_unlock();
 if (conf->raid_disks == conf->previous_raid_disks)
  return degraded;
 rcu_read_lock();
 degraded2 = 0;
 for (i = 0; i < conf->raid_disks; i++) {
  struct md_rdev *rdev = rcu_dereference(conf->disks[i].rdev);
  if (rdev && test_bit(Faulty, &rdev->flags))
   rdev = rcu_dereference(conf->disks[i].replacement);
  if (!rdev || test_bit(Faulty, &rdev->flags))
   degraded2++;
  else if (test_bit(In_sync, &rdev->flags))
   ;
  else





   if (conf->raid_disks <= conf->previous_raid_disks)
    degraded2++;
 }
 rcu_read_unlock();
 if (degraded2 > degraded)
  return degraded2;
 return degraded;
}
