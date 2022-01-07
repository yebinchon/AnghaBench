
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_device_shadow {scalar_t__ lock; } ;
struct video_device {TYPE_1__* fops; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int (* release ) (struct file*) ;} ;


 int mutex_lock (scalar_t__) ;
 int mutex_unlock (scalar_t__) ;
 int stub1 (struct file*) ;
 struct video_device* video_devdata (struct file*) ;
 struct video_device_shadow* video_device_shadow_get (struct video_device*) ;
 int video_put (struct video_device*) ;

__attribute__((used)) static int v4l2_release(struct inode *inode, struct file *filp)
{
 struct video_device *vdev = video_devdata(filp);
 struct video_device_shadow *shvdev = video_device_shadow_get(vdev);
 int ret = 0;

 if (vdev->fops->release) {
  if (shvdev && shvdev->lock)
   mutex_lock(shvdev->lock);
  vdev->fops->release(filp);
  if (shvdev && shvdev->lock)
   mutex_unlock(shvdev->lock);
 }



 video_put(vdev);
 return ret;
}
