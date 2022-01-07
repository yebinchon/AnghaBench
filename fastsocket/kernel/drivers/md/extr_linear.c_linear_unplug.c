
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request_queue {struct mddev* queuedata; } ;
struct mddev {int raid_disks; int private; } ;
struct linear_conf {TYPE_2__* disks; } ;
struct TYPE_4__ {TYPE_1__* rdev; } ;
struct TYPE_3__ {int bdev; } ;


 struct request_queue* bdev_get_queue (int ) ;
 int blk_unplug (struct request_queue*) ;
 struct linear_conf* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static void linear_unplug(struct request_queue *q)
{
 struct mddev *mddev = q->queuedata;
 struct linear_conf *conf;
 int i;

 rcu_read_lock();
 conf = rcu_dereference(mddev->private);

 for (i=0; i < mddev->raid_disks; i++) {
  struct request_queue *r_queue = bdev_get_queue(conf->disks[i].rdev->bdev);
  blk_unplug(r_queue);
 }
 rcu_read_unlock();
}
