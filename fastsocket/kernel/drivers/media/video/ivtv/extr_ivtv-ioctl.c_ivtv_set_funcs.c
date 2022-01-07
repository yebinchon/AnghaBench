
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int * ioctl_ops; } ;


 int ivtv_ioctl_ops ;

void ivtv_set_funcs(struct video_device *vdev)
{
 vdev->ioctl_ops = &ivtv_ioctl_ops;
}
