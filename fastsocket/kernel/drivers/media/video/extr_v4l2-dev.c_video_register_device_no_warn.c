
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int dummy; } ;


 int __video_register_device (struct video_device*,int,int,int ) ;

int video_register_device_no_warn(struct video_device *vdev, int type, int nr)
{
 return __video_register_device(vdev, type, nr, 0);
}
