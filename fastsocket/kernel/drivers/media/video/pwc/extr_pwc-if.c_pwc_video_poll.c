
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int dummy; } ;
struct pwc_device {int * full_frames; scalar_t__ error_status; int frameq; int modlock; } ;
struct file {struct video_device* private_data; } ;
typedef int poll_table ;


 unsigned int EFAULT ;
 unsigned int POLLERR ;
 unsigned int POLLIN ;
 unsigned int POLLRDNORM ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int poll_wait (struct file*,int *,int *) ;
 int pwc_isoc_init (struct pwc_device*) ;
 struct pwc_device* video_get_drvdata (struct video_device*) ;

__attribute__((used)) static unsigned int pwc_video_poll(struct file *file, poll_table *wait)
{
 struct video_device *vdev = file->private_data;
 struct pwc_device *pdev;
 int ret;

 if (vdev == ((void*)0))
  return -EFAULT;
 pdev = video_get_drvdata(vdev);
 if (pdev == ((void*)0))
  return -EFAULT;


 mutex_lock(&pdev->modlock);
 ret = pwc_isoc_init(pdev);
 mutex_unlock(&pdev->modlock);
 if (ret)
  return ret;

 poll_wait(file, &pdev->frameq, wait);
 if (pdev->error_status)
  return POLLERR;
 if (pdev->full_frames != ((void*)0))
  return (POLLIN | POLLRDNORM);

 return 0;
}
