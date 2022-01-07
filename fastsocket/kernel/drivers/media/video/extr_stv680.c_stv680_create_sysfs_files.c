
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int dev; } ;


 int PDEBUG (int ,char*) ;
 int dev_attr_decoding_errors ;
 int dev_attr_frames_read ;
 int dev_attr_frames_total ;
 int dev_attr_in_use ;
 int dev_attr_model ;
 int dev_attr_packets_dropped ;
 int dev_attr_palette ;
 int dev_attr_streaming ;
 int device_create_file (int *,int *) ;
 int device_remove_file (int *,int *) ;

__attribute__((used)) static int stv680_create_sysfs_files(struct video_device *vdev)
{
 int rc;

 rc = device_create_file(&vdev->dev, &dev_attr_model);
 if (rc) goto err;
 rc = device_create_file(&vdev->dev, &dev_attr_in_use);
 if (rc) goto err_model;
 rc = device_create_file(&vdev->dev, &dev_attr_streaming);
 if (rc) goto err_inuse;
 rc = device_create_file(&vdev->dev, &dev_attr_palette);
 if (rc) goto err_stream;
 rc = device_create_file(&vdev->dev, &dev_attr_frames_total);
 if (rc) goto err_pal;
 rc = device_create_file(&vdev->dev, &dev_attr_frames_read);
 if (rc) goto err_framtot;
 rc = device_create_file(&vdev->dev, &dev_attr_packets_dropped);
 if (rc) goto err_framread;
 rc = device_create_file(&vdev->dev, &dev_attr_decoding_errors);
 if (rc) goto err_dropped;

 return 0;

err_dropped:
 device_remove_file(&vdev->dev, &dev_attr_packets_dropped);
err_framread:
 device_remove_file(&vdev->dev, &dev_attr_frames_read);
err_framtot:
 device_remove_file(&vdev->dev, &dev_attr_frames_total);
err_pal:
 device_remove_file(&vdev->dev, &dev_attr_palette);
err_stream:
 device_remove_file(&vdev->dev, &dev_attr_streaming);
err_inuse:
 device_remove_file(&vdev->dev, &dev_attr_in_use);
err_model:
 device_remove_file(&vdev->dev, &dev_attr_model);
err:
 PDEBUG(0, "STV(e): Could not create sysfs files");
 return rc;
}
