
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct mddev {int raid_disks; TYPE_2__* private; } ;
struct md_rdev {int nr_pending; int bdev; int flags; } ;
struct TYPE_4__ {TYPE_1__* multipaths; } ;
typedef TYPE_2__ multipath_conf_t ;
struct TYPE_3__ {int rdev; } ;


 int Faulty ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 struct request_queue* bdev_get_queue (int ) ;
 int blk_unplug (struct request_queue*) ;
 struct md_rdev* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int rdev_dec_pending (struct md_rdev*,struct mddev*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void unplug_slaves(struct mddev *mddev)
{
 multipath_conf_t *conf = mddev->private;
 int i;

 rcu_read_lock();
 for (i=0; i<mddev->raid_disks; i++) {
  struct md_rdev *rdev = rcu_dereference(conf->multipaths[i].rdev);
  if (rdev && !test_bit(Faulty, &rdev->flags)
      && atomic_read(&rdev->nr_pending)) {
   struct request_queue *r_queue = bdev_get_queue(rdev->bdev);

   atomic_inc(&rdev->nr_pending);
   rcu_read_unlock();

   blk_unplug(r_queue);

   rdev_dec_pending(rdev, mddev);
   rcu_read_lock();
  }
 }
 rcu_read_unlock();
}
