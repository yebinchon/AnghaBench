
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {size_t minor; int (* release ) (struct video_device*) ;int * cdev; } ;
struct device {int dummy; } ;


 int WARN_ON (int) ;
 int cdev_del (int *) ;
 int devnode_clear (struct video_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct video_device*) ;
 struct video_device* to_video_device (struct device*) ;
 struct video_device** video_device ;
 int videodev_lock ;

__attribute__((used)) static void v4l2_device_release(struct device *cd)
{
 struct video_device *vdev = to_video_device(cd);

 mutex_lock(&videodev_lock);
 if (video_device[vdev->minor] != vdev) {
  mutex_unlock(&videodev_lock);

  WARN_ON(1);
  return;
 }


 video_device[vdev->minor] = ((void*)0);


 cdev_del(vdev->cdev);


 vdev->cdev = ((void*)0);


 devnode_clear(vdev);

 mutex_unlock(&videodev_lock);



 vdev->release(vdev);
}
