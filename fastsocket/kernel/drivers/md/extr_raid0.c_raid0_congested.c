
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {int backing_dev_info; } ;
struct r0conf {TYPE_1__* strip_zone; struct md_rdev** devlist; } ;
struct mddev {struct r0conf* private; } ;
struct md_rdev {int bdev; } ;
struct TYPE_2__ {int nb_dev; } ;


 struct request_queue* bdev_get_queue (int ) ;
 int bdi_congested (int *,int) ;
 scalar_t__ mddev_congested (struct mddev*,int) ;

__attribute__((used)) static int raid0_congested(void *data, int bits)
{
 struct mddev *mddev = data;
 struct r0conf *conf = mddev->private;
 struct md_rdev **devlist = conf->devlist;
 int raid_disks = conf->strip_zone[0].nb_dev;
 int i, ret = 0;

 if (mddev_congested(mddev, bits))
  return 1;

 for (i = 0; i < raid_disks && !ret ; i++) {
  struct request_queue *q = bdev_get_queue(devlist[i]->bdev);

  ret |= bdi_congested(&q->backing_dev_info, bits);
 }
 return ret;
}
