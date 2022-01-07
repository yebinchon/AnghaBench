
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int raid_disks; int near_copies; } ;
struct TYPE_4__ {int raid_disks; int near_copies; } ;
struct r10conf {int copies; TYPE_3__* mirrors; TYPE_2__ geo; TYPE_1__ prev; } ;
struct md_rdev {int flags; } ;
struct TYPE_6__ {int rdev; } ;


 int In_sync ;
 struct md_rdev* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int _enough(struct r10conf *conf, int previous, int ignore)
{
 int first = 0;
 int has_enough = 0;
 int disks, ncopies;
 if (previous) {
  disks = conf->prev.raid_disks;
  ncopies = conf->prev.near_copies;
 } else {
  disks = conf->geo.raid_disks;
  ncopies = conf->geo.near_copies;
 }

 rcu_read_lock();
 do {
  int n = conf->copies;
  int cnt = 0;
  int this = first;
  while (n--) {
   struct md_rdev *rdev;
   if (this != ignore &&
       (rdev = rcu_dereference(conf->mirrors[this].rdev)) &&
       test_bit(In_sync, &rdev->flags))
    cnt++;
   this = (this+1) % disks;
  }
  if (cnt == 0)
   goto out;
  first = (first + ncopies) % disks;
 } while (first != 0);
 has_enough = 1;
out:
 rcu_read_unlock();
 return has_enough;
}
