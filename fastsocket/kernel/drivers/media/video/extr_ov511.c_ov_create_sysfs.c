
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int dev; } ;


 int dev_attr_bridge ;
 int dev_attr_brightness ;
 int dev_attr_contrast ;
 int dev_attr_custom_id ;
 int dev_attr_exposure ;
 int dev_attr_hue ;
 int dev_attr_model ;
 int dev_attr_saturation ;
 int dev_attr_sensor ;
 int device_create_file (int *,int *) ;
 int device_remove_file (int *,int *) ;

__attribute__((used)) static int ov_create_sysfs(struct video_device *vdev)
{
 int rc;

 rc = device_create_file(&vdev->dev, &dev_attr_custom_id);
 if (rc) goto err;
 rc = device_create_file(&vdev->dev, &dev_attr_model);
 if (rc) goto err_id;
 rc = device_create_file(&vdev->dev, &dev_attr_bridge);
 if (rc) goto err_model;
 rc = device_create_file(&vdev->dev, &dev_attr_sensor);
 if (rc) goto err_bridge;
 rc = device_create_file(&vdev->dev, &dev_attr_brightness);
 if (rc) goto err_sensor;
 rc = device_create_file(&vdev->dev, &dev_attr_saturation);
 if (rc) goto err_bright;
 rc = device_create_file(&vdev->dev, &dev_attr_contrast);
 if (rc) goto err_sat;
 rc = device_create_file(&vdev->dev, &dev_attr_hue);
 if (rc) goto err_contrast;
 rc = device_create_file(&vdev->dev, &dev_attr_exposure);
 if (rc) goto err_hue;

 return 0;

err_hue:
 device_remove_file(&vdev->dev, &dev_attr_hue);
err_contrast:
 device_remove_file(&vdev->dev, &dev_attr_contrast);
err_sat:
 device_remove_file(&vdev->dev, &dev_attr_saturation);
err_bright:
 device_remove_file(&vdev->dev, &dev_attr_brightness);
err_sensor:
 device_remove_file(&vdev->dev, &dev_attr_sensor);
err_bridge:
 device_remove_file(&vdev->dev, &dev_attr_bridge);
err_model:
 device_remove_file(&vdev->dev, &dev_attr_model);
err_id:
 device_remove_file(&vdev->dev, &dev_attr_custom_id);
err:
 return rc;
}
