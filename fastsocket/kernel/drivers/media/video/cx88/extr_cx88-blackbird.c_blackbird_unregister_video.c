
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx8802_dev {int * mpeg_dev; } ;


 int video_device_release (int *) ;
 scalar_t__ video_is_registered (int *) ;
 int video_unregister_device (int *) ;

__attribute__((used)) static void blackbird_unregister_video(struct cx8802_dev *dev)
{
 if (dev->mpeg_dev) {
  if (video_is_registered(dev->mpeg_dev))
   video_unregister_device(dev->mpeg_dev);
  else
   video_device_release(dev->mpeg_dev);
  dev->mpeg_dev = ((void*)0);
 }
}
