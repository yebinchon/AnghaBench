
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int dev; } ;
struct pwc_device {int features; } ;


 int FEATURE_MOTOR_PANTILT ;
 int PWC_ERROR (char*) ;
 int dev_attr_button ;
 int dev_attr_pan_tilt ;
 int device_create_file (int *,int *) ;
 int device_remove_file (int *,int *) ;
 struct pwc_device* video_get_drvdata (struct video_device*) ;

__attribute__((used)) static int pwc_create_sysfs_files(struct video_device *vdev)
{
 struct pwc_device *pdev = video_get_drvdata(vdev);
 int rc;

 rc = device_create_file(&vdev->dev, &dev_attr_button);
 if (rc)
  goto err;
 if (pdev->features & FEATURE_MOTOR_PANTILT) {
  rc = device_create_file(&vdev->dev, &dev_attr_pan_tilt);
  if (rc)
   goto err_button;
 }

 return 0;

err_button:
 device_remove_file(&vdev->dev, &dev_attr_button);
err:
 PWC_ERROR("Could not create sysfs files.\n");
 return rc;
}
