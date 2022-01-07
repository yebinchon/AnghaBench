
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int dummy; } ;
struct hdpvr_device {struct hdpvr_device* usbc_buf; int i2c_mutex; int i2c_adapter; int v4l2_dev; int io_mutex; int workqueue; } ;


 int destroy_workqueue (int ) ;
 int hdpvr_delete (struct hdpvr_device*) ;
 int i2c_del_adapter (int *) ;
 int kfree (struct hdpvr_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int v4l2_device_unregister (int *) ;
 struct hdpvr_device* video_get_drvdata (struct video_device*) ;

__attribute__((used)) static void hdpvr_device_release(struct video_device *vdev)
{
 struct hdpvr_device *dev = video_get_drvdata(vdev);

 hdpvr_delete(dev);
 mutex_lock(&dev->io_mutex);
 destroy_workqueue(dev->workqueue);
 mutex_unlock(&dev->io_mutex);

 v4l2_device_unregister(&dev->v4l2_dev);
 kfree(dev->usbc_buf);
 kfree(dev);
}
