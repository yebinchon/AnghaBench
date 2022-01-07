
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int dummy; } ;
struct usb_ov511 {int lock; } ;
struct file {struct video_device* private_data; } ;


 long EINTR ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int ov51x_v4l1_ioctl_internal ;
 struct usb_ov511* video_get_drvdata (struct video_device*) ;
 int video_usercopy (struct file*,unsigned int,unsigned long,int ) ;

__attribute__((used)) static long
ov51x_v4l1_ioctl(struct file *file,
   unsigned int cmd, unsigned long arg)
{
 struct video_device *vdev = file->private_data;
 struct usb_ov511 *ov = video_get_drvdata(vdev);
 int rc;

 if (mutex_lock_interruptible(&ov->lock))
  return -EINTR;

 rc = video_usercopy(file, cmd, arg, ov51x_v4l1_ioctl_internal);

 mutex_unlock(&ov->lock);
 return rc;
}
