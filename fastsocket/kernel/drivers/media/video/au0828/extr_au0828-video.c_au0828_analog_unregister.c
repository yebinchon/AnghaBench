
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au0828_dev {scalar_t__ vbi_dev; scalar_t__ vdev; } ;


 int au0828_sysfs_lock ;
 int dprintk (int,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int video_unregister_device (scalar_t__) ;

void au0828_analog_unregister(struct au0828_dev *dev)
{
 dprintk(1, "au0828_release_resources called\n");
 mutex_lock(&au0828_sysfs_lock);

 if (dev->vdev)
  video_unregister_device(dev->vdev);
 if (dev->vbi_dev)
  video_unregister_device(dev->vbi_dev);

 mutex_unlock(&au0828_sysfs_lock);
}
