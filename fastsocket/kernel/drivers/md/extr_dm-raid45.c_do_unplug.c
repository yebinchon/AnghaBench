
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int raid_devs; } ;
struct raid_set {struct raid_dev* dev; TYPE_1__ set; } ;
struct raid_dev {TYPE_2__* dev; } ;
struct TYPE_4__ {int bdev; } ;


 scalar_t__ TestClearDevIoQueued (struct raid_dev*) ;
 int bdev_get_queue (int ) ;
 int blk_unplug (int ) ;

__attribute__((used)) static void do_unplug(struct raid_set *rs)
{
 struct raid_dev *dev = rs->dev + rs->set.raid_devs;

 while (dev-- > rs->dev) {

  if (TestClearDevIoQueued(dev))
   blk_unplug(bdev_get_queue(dev->dev->bdev));
 }
}
