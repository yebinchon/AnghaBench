
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct em28xx {int * vdev; int * vbi_dev; int * radio_dev; } ;


 int em28xx_info (char*,int ) ;
 int video_device_node_name (int *) ;
 int video_device_release (int *) ;
 scalar_t__ video_is_registered (int *) ;
 int video_unregister_device (int *) ;

void em28xx_release_analog_resources(struct em28xx *dev)
{



 if (dev->radio_dev) {
  if (video_is_registered(dev->radio_dev))
   video_unregister_device(dev->radio_dev);
  else
   video_device_release(dev->radio_dev);
  dev->radio_dev = ((void*)0);
 }
 if (dev->vbi_dev) {
  em28xx_info("V4L2 device %s deregistered\n",
       video_device_node_name(dev->vbi_dev));
  if (video_is_registered(dev->vbi_dev))
   video_unregister_device(dev->vbi_dev);
  else
   video_device_release(dev->vbi_dev);
  dev->vbi_dev = ((void*)0);
 }
 if (dev->vdev) {
  em28xx_info("V4L2 device %s deregistered\n",
       video_device_node_name(dev->vdev));
  if (video_is_registered(dev->vdev))
   video_unregister_device(dev->vdev);
  else
   video_device_release(dev->vdev);
  dev->vdev = ((void*)0);
 }
}
