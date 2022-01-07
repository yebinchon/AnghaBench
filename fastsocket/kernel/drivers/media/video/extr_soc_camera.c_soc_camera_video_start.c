
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int parent; } ;
struct soc_camera_device {TYPE_3__* vdev; TYPE_4__ dev; TYPE_1__* ops; } ;
struct device_type {int dummy; } ;
struct TYPE_6__ {struct device_type* type; } ;
struct TYPE_7__ {TYPE_2__ dev; } ;
struct TYPE_5__ {int set_bus_param; int query_bus_param; } ;


 int EINVAL ;
 int ENODEV ;
 int VFL_TYPE_GRABBER ;
 int dev_err (TYPE_4__*,char*,int) ;
 int video_register_device (TYPE_3__*,int ,int) ;

__attribute__((used)) static int soc_camera_video_start(struct soc_camera_device *icd)
{
 struct device_type *type = icd->vdev->dev.type;
 int ret;

 if (!icd->dev.parent)
  return -ENODEV;

 if (!icd->ops ||
     !icd->ops->query_bus_param ||
     !icd->ops->set_bus_param)
  return -EINVAL;

 ret = video_register_device(icd->vdev, VFL_TYPE_GRABBER, -1);
 if (ret < 0) {
  dev_err(&icd->dev, "video_register_device failed: %d\n", ret);
  return ret;
 }


 icd->vdev->dev.type = type;

 return 0;
}
