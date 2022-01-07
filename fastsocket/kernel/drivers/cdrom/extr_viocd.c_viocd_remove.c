
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vio_dev {size_t unit_address; } ;
struct disk_info {TYPE_1__* viocd_disk; int viocd_info; } ;
struct TYPE_3__ {int queue; } ;


 int blk_cleanup_queue (int ) ;
 int del_gendisk (TYPE_1__*) ;
 int put_disk (TYPE_1__*) ;
 int unregister_cdrom (int *) ;
 struct disk_info* viocd_diskinfo ;

__attribute__((used)) static int viocd_remove(struct vio_dev *vdev)
{
 struct disk_info *d = &viocd_diskinfo[vdev->unit_address];

 unregister_cdrom(&d->viocd_info);
 del_gendisk(d->viocd_disk);
 blk_cleanup_queue(d->viocd_disk->queue);
 put_disk(d->viocd_disk);
 return 0;
}
