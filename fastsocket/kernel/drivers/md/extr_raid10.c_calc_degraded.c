
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int raid_disks; } ;
struct TYPE_5__ {int raid_disks; } ;
struct r10conf {TYPE_3__ prev; TYPE_2__ geo; TYPE_1__* mirrors; } ;
struct md_rdev {int flags; } ;
struct TYPE_4__ {int rdev; } ;


 int Faulty ;
 int In_sync ;
 struct md_rdev* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int calc_degraded(struct r10conf *conf)
{
 int degraded, degraded2;
 int i;

 rcu_read_lock();
 degraded = 0;

 for (i = 0; i < conf->prev.raid_disks; i++) {
  struct md_rdev *rdev = rcu_dereference(conf->mirrors[i].rdev);
  if (!rdev || test_bit(Faulty, &rdev->flags))
   degraded++;
  else if (!test_bit(In_sync, &rdev->flags))




   degraded++;
 }
 rcu_read_unlock();
 if (conf->geo.raid_disks == conf->prev.raid_disks)
  return degraded;
 rcu_read_lock();
 degraded2 = 0;
 for (i = 0; i < conf->geo.raid_disks; i++) {
  struct md_rdev *rdev = rcu_dereference(conf->mirrors[i].rdev);
  if (!rdev || test_bit(Faulty, &rdev->flags))
   degraded2++;
  else if (!test_bit(In_sync, &rdev->flags)) {





   if (conf->geo.raid_disks <= conf->prev.raid_disks)
    degraded2++;
  }
 }
 rcu_read_unlock();
 if (degraded2 > degraded)
  return degraded2;
 return degraded;
}
