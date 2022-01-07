
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request_queue {int backing_dev_info; } ;
struct mddev {int raid_disks; int private; } ;
struct linear_conf {TYPE_2__* disks; } ;
struct TYPE_4__ {TYPE_1__* rdev; } ;
struct TYPE_3__ {int bdev; } ;


 struct request_queue* bdev_get_queue (int ) ;
 int bdi_congested (int *,int) ;
 scalar_t__ mddev_congested (struct mddev*,int) ;
 struct linear_conf* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static int linear_congested(void *data, int bits)
{
 struct mddev *mddev = data;
 struct linear_conf *conf;
 int i, ret = 0;

 if (mddev_congested(mddev, bits))
  return 1;

 rcu_read_lock();
 conf = rcu_dereference(mddev->private);

 for (i = 0; i < mddev->raid_disks && !ret ; i++) {
  struct request_queue *q = bdev_get_queue(conf->disks[i].rdev->bdev);
  ret |= bdi_congested(&q->backing_dev_info, bits);
 }

 rcu_read_unlock();
 return ret;
}
