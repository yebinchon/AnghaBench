
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mddev {struct linear_conf* private; TYPE_2__* queue; int raid_disks; } ;
struct linear_conf {int dummy; } ;
struct TYPE_3__ {struct mddev* congested_data; int congested_fn; } ;
struct TYPE_4__ {TYPE_1__ backing_dev_info; int unplug_fn; } ;


 int EINVAL ;
 int blk_queue_merge_bvec (TYPE_2__*,int ) ;
 int kfree (struct linear_conf*) ;
 struct linear_conf* linear_conf (struct mddev*,int ) ;
 int linear_congested ;
 int linear_mergeable_bvec ;
 int linear_size (struct mddev*,int ,int ) ;
 int linear_unplug ;
 scalar_t__ md_check_no_bitmap (struct mddev*) ;
 int md_integrity_register (struct mddev*) ;
 int md_set_array_sectors (struct mddev*,int ) ;

__attribute__((used)) static int linear_run (struct mddev *mddev)
{
 struct linear_conf *conf;
 int ret;

 if (md_check_no_bitmap(mddev))
  return -EINVAL;
 conf = linear_conf(mddev, mddev->raid_disks);

 if (!conf)
  return 1;
 mddev->private = conf;
 md_set_array_sectors(mddev, linear_size(mddev, 0, 0));

 blk_queue_merge_bvec(mddev->queue, linear_mergeable_bvec);
 mddev->queue->unplug_fn = linear_unplug;
 mddev->queue->backing_dev_info.congested_fn = linear_congested;
 mddev->queue->backing_dev_info.congested_data = mddev;

 ret = md_integrity_register(mddev);
 if (ret) {
  kfree(conf);
  mddev->private = ((void*)0);
 }
 return ret;
}
