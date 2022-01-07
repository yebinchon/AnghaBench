
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int dummy; } ;
struct pwc_device {int modlock; int unplugged; } ;
struct file {struct video_device* private_data; } ;


 long ENODEV ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pwc_video_do_ioctl ;
 struct pwc_device* video_get_drvdata (struct video_device*) ;
 long video_usercopy (struct file*,unsigned int,unsigned long,int ) ;

__attribute__((used)) static long pwc_video_ioctl(struct file *file,
      unsigned int cmd, unsigned long arg)
{
 struct video_device *vdev = file->private_data;
 struct pwc_device *pdev;
 long r = -ENODEV;

 if (!vdev)
  goto out;
 pdev = video_get_drvdata(vdev);

 mutex_lock(&pdev->modlock);
 if (!pdev->unplugged)
  r = video_usercopy(file, cmd, arg, pwc_video_do_ioctl);
 mutex_unlock(&pdev->modlock);
out:
 return r;
}
