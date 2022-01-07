
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gendisk {int minors; TYPE_1__* queue; } ;
struct TYPE_4__ {int kobj; } ;
struct TYPE_3__ {int backing_dev_info; } ;


 int bdi_unregister (int *) ;
 int blk_unregister_queue (struct gendisk*) ;
 int blk_unregister_region (int ,int ) ;
 int disk_devt (struct gendisk*) ;
 TYPE_2__* disk_to_dev (struct gendisk*) ;
 int sysfs_remove_link (int *,char*) ;

void unlink_gendisk(struct gendisk *disk)
{
 sysfs_remove_link(&disk_to_dev(disk)->kobj, "bdi");
 bdi_unregister(&disk->queue->backing_dev_info);
 blk_unregister_queue(disk);
 blk_unregister_region(disk_devt(disk), disk->minors);
}
