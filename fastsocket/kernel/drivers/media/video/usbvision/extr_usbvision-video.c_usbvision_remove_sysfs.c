
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int dev; } ;


 int dev_attr_bridge ;
 int dev_attr_brightness ;
 int dev_attr_compression ;
 int dev_attr_contrast ;
 int dev_attr_hue ;
 int dev_attr_model ;
 int dev_attr_saturation ;
 int dev_attr_streaming ;
 int dev_attr_version ;
 int device_remove_file (int *,int *) ;

__attribute__((used)) static void usbvision_remove_sysfs(struct video_device *vdev)
{
 if (vdev) {
  device_remove_file(&vdev->dev, &dev_attr_version);
  device_remove_file(&vdev->dev, &dev_attr_model);
  device_remove_file(&vdev->dev, &dev_attr_hue);
  device_remove_file(&vdev->dev, &dev_attr_contrast);
  device_remove_file(&vdev->dev, &dev_attr_brightness);
  device_remove_file(&vdev->dev, &dev_attr_saturation);
  device_remove_file(&vdev->dev, &dev_attr_streaming);
  device_remove_file(&vdev->dev, &dev_attr_compression);
  device_remove_file(&vdev->dev, &dev_attr_bridge);
 }
}
