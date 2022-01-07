
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int dev; } ;


 int dev_attr_decoding_errors ;
 int dev_attr_frames_read ;
 int dev_attr_frames_total ;
 int dev_attr_in_use ;
 int dev_attr_model ;
 int dev_attr_packets_dropped ;
 int dev_attr_palette ;
 int dev_attr_streaming ;
 int device_remove_file (int *,int *) ;

__attribute__((used)) static void stv680_remove_sysfs_files(struct video_device *vdev)
{
 device_remove_file(&vdev->dev, &dev_attr_model);
 device_remove_file(&vdev->dev, &dev_attr_in_use);
 device_remove_file(&vdev->dev, &dev_attr_streaming);
 device_remove_file(&vdev->dev, &dev_attr_palette);
 device_remove_file(&vdev->dev, &dev_attr_frames_total);
 device_remove_file(&vdev->dev, &dev_attr_frames_read);
 device_remove_file(&vdev->dev, &dev_attr_packets_dropped);
 device_remove_file(&vdev->dev, &dev_attr_decoding_errors);
}
