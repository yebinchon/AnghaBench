
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct viodasd_device {int * dev; } ;
struct vio_device_id {int dummy; } ;
struct vio_dev {size_t unit_address; int dev; } ;


 int ENODEV ;
 int probe_disk (struct viodasd_device*) ;
 struct viodasd_device* viodasd_devices ;

__attribute__((used)) static int viodasd_probe(struct vio_dev *vdev, const struct vio_device_id *id)
{
 struct viodasd_device *d = &viodasd_devices[vdev->unit_address];

 d->dev = &vdev->dev;
 if (!probe_disk(d))
  return -ENODEV;
 return 0;
}
