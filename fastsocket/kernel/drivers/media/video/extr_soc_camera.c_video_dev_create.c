
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_device {void* tvnorms; int release; int * ioctl_ops; int * fops; void* current_norm; TYPE_1__* parent; int name; } ;
struct soc_camera_host {int drv_name; } ;
struct TYPE_2__ {int parent; } ;
struct soc_camera_device {struct video_device* vdev; TYPE_1__ dev; } ;


 int ENOMEM ;
 void* V4L2_STD_UNKNOWN ;
 int soc_camera_fops ;
 int soc_camera_ioctl_ops ;
 int strlcpy (int ,int ,int) ;
 struct soc_camera_host* to_soc_camera_host (int ) ;
 struct video_device* video_device_alloc () ;
 int video_device_release ;

__attribute__((used)) static int video_dev_create(struct soc_camera_device *icd)
{
 struct soc_camera_host *ici = to_soc_camera_host(icd->dev.parent);
 struct video_device *vdev = video_device_alloc();

 if (!vdev)
  return -ENOMEM;

 strlcpy(vdev->name, ici->drv_name, sizeof(vdev->name));

 vdev->parent = &icd->dev;
 vdev->current_norm = V4L2_STD_UNKNOWN;
 vdev->fops = &soc_camera_fops;
 vdev->ioctl_ops = &soc_camera_ioctl_ops;
 vdev->release = video_device_release;
 vdev->tvnorms = V4L2_STD_UNKNOWN;

 icd->vdev = vdev;

 return 0;
}
