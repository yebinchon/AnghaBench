
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vino_channel_settings {int mutex; } ;
struct file {int dummy; } ;


 long EINTR ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 struct vino_channel_settings* video_drvdata (struct file*) ;
 long video_ioctl2 (struct file*,unsigned int,unsigned long) ;

__attribute__((used)) static long vino_ioctl(struct file *file,
        unsigned int cmd, unsigned long arg)
{
 struct vino_channel_settings *vcs = video_drvdata(file);
 long ret;

 if (mutex_lock_interruptible(&vcs->mutex))
  return -EINTR;

 ret = video_ioctl2(file, cmd, arg);

 mutex_unlock(&vcs->mutex);

 return ret;
}
