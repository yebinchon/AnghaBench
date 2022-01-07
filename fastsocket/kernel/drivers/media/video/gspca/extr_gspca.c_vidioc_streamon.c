
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gspca_dev {scalar_t__ nframes; int queue_lock; int height; int width; int pixfmt; int streaming; TYPE_2__* frame; struct file* capt_file; } ;
struct file {int dummy; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;
struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {TYPE_1__ v4l2_buf; } ;


 int D_STREAM ;
 int EBUSY ;
 int EINVAL ;
 int ERESTARTSYS ;
 int PDEBUG_MODE (char*,int ,int ,int ) ;
 int V4L2_BUF_FLAG_QUEUED ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int gspca_debug ;
 int gspca_init_transfer (struct gspca_dev*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int vidioc_streamon(struct file *file, void *priv,
      enum v4l2_buf_type buf_type)
{
 struct gspca_dev *gspca_dev = priv;
 int ret;

 if (buf_type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return -EINVAL;
 if (mutex_lock_interruptible(&gspca_dev->queue_lock))
  return -ERESTARTSYS;


 if (gspca_dev->capt_file != file) {
  ret = -EBUSY;
  goto out;
 }

 if (gspca_dev->nframes == 0
     || !(gspca_dev->frame[0].v4l2_buf.flags & V4L2_BUF_FLAG_QUEUED)) {
  ret = -EINVAL;
  goto out;
 }
 if (!gspca_dev->streaming) {
  ret = gspca_init_transfer(gspca_dev);
  if (ret < 0)
   goto out;
 }
 ret = 0;
out:
 mutex_unlock(&gspca_dev->queue_lock);
 return ret;
}
