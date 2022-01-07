
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int dev; } ;
struct pwc_device {int features; } ;


 int FEATURE_MOTOR_PANTILT ;
 int dev_attr_button ;
 int dev_attr_pan_tilt ;
 int device_remove_file (int *,int *) ;
 struct pwc_device* video_get_drvdata (struct video_device*) ;

__attribute__((used)) static void pwc_remove_sysfs_files(struct video_device *vdev)
{
 struct pwc_device *pdev = video_get_drvdata(vdev);

 if (pdev->features & FEATURE_MOTOR_PANTILT)
  device_remove_file(&vdev->dev, &dev_attr_pan_tilt);
 device_remove_file(&vdev->dev, &dev_attr_button);
}
