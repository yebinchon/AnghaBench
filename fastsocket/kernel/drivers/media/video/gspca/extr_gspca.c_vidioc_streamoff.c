
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int queue_lock; scalar_t__ fr_o; int fr_i; int fr_q; int wq; int usb_lock; scalar_t__ usb_err; struct file* capt_file; int streaming; } ;
struct file {int dummy; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 int EBUSY ;
 int EINVAL ;
 int ERESTARTSYS ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int atomic_set (int *,int ) ;
 int gspca_stream_off (struct gspca_dev*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static int vidioc_streamoff(struct file *file, void *priv,
    enum v4l2_buf_type buf_type)
{
 struct gspca_dev *gspca_dev = priv;
 int ret;

 if (buf_type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return -EINVAL;

 if (mutex_lock_interruptible(&gspca_dev->queue_lock))
  return -ERESTARTSYS;

 if (!gspca_dev->streaming) {
  ret = 0;
  goto out;
 }


 if (gspca_dev->capt_file != file) {
  ret = -EBUSY;
  goto out;
 }


 if (mutex_lock_interruptible(&gspca_dev->usb_lock)) {
  ret = -ERESTARTSYS;
  goto out;
 }
 gspca_dev->usb_err = 0;
 gspca_stream_off(gspca_dev);
 mutex_unlock(&gspca_dev->usb_lock);

 wake_up_interruptible(&gspca_dev->wq);


 atomic_set(&gspca_dev->fr_q, 0);
 atomic_set(&gspca_dev->fr_i, 0);
 gspca_dev->fr_o = 0;
 ret = 0;
out:
 mutex_unlock(&gspca_dev->queue_lock);
 return ret;
}
