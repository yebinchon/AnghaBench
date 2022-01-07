
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {struct mddev* queuedata; } ;
struct r0conf {TYPE_1__* strip_zone; struct md_rdev** devlist; } ;
struct mddev {struct r0conf* private; } ;
struct md_rdev {int bdev; } ;
struct TYPE_2__ {int nb_dev; } ;


 struct request_queue* bdev_get_queue (int ) ;
 int blk_unplug (struct request_queue*) ;

__attribute__((used)) static void raid0_unplug(struct request_queue *q)
{
 struct mddev *mddev = q->queuedata;
 struct r0conf *conf = mddev->private;
 struct md_rdev **devlist = conf->devlist;
 int raid_disks = conf->strip_zone[0].nb_dev;
 int i;

 for (i=0; i < raid_disks; i++) {
  struct request_queue *r_queue = bdev_get_queue(devlist[i]->bdev);

  blk_unplug(r_queue);
 }
}
