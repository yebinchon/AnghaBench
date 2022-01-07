
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct videobuf_queue {int dummy; } ;
struct omap24xxcam_fh {struct videobuf_queue vbq; struct omap24xxcam_device* cam; } ;
struct omap24xxcam_device {int reset_disable; TYPE_1__* dev; int mutex; int * streaming; } ;
struct file {int dummy; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;
struct TYPE_2__ {int kobj; } ;


 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int flush_scheduled_work () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sysfs_notify (int *,int *,char*) ;
 int videobuf_streamoff (struct videobuf_queue*) ;

__attribute__((used)) static int vidioc_streamoff(struct file *file, void *fh, enum v4l2_buf_type i)
{
 struct omap24xxcam_fh *ofh = fh;
 struct omap24xxcam_device *cam = ofh->cam;
 struct videobuf_queue *q = &ofh->vbq;
 int rval;

 atomic_inc(&cam->reset_disable);

 flush_scheduled_work();

 rval = videobuf_streamoff(q);
 if (!rval) {
  mutex_lock(&cam->mutex);
  cam->streaming = ((void*)0);
  mutex_unlock(&cam->mutex);
  sysfs_notify(&cam->dev->kobj, ((void*)0), "streaming");
 }

 atomic_dec(&cam->reset_disable);

 return rval;
}
