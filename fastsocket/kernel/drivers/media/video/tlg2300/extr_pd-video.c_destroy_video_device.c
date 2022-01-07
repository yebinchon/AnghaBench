
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int dummy; } ;


 int video_device_release (struct video_device*) ;
 scalar_t__ video_is_registered (struct video_device*) ;
 int video_unregister_device (struct video_device*) ;

void destroy_video_device(struct video_device **v_dev)
{
 struct video_device *dev = *v_dev;

 if (dev == ((void*)0))
  return;

 if (video_is_registered(dev))
  video_unregister_device(dev);
 else
  video_device_release(dev);
 *v_dev = ((void*)0);
}
