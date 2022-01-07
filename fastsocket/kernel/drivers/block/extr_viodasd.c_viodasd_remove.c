
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct viodasd_device {int * dev; TYPE_1__* disk; } ;
struct vio_dev {size_t unit_address; } ;
struct TYPE_3__ {int queue; } ;


 int blk_cleanup_queue (int ) ;
 int del_gendisk (TYPE_1__*) ;
 int put_disk (TYPE_1__*) ;
 struct viodasd_device* viodasd_devices ;

__attribute__((used)) static int viodasd_remove(struct vio_dev *vdev)
{
 struct viodasd_device *d;

 d = &viodasd_devices[vdev->unit_address];
 if (d->disk) {
  del_gendisk(d->disk);
  blk_cleanup_queue(d->disk->queue);
  put_disk(d->disk);
  d->disk = ((void*)0);
 }
 d->dev = ((void*)0);
 return 0;
}
