
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ext_controls {scalar_t__ ctrl_class; int count; int error_idx; struct v4l2_ext_control* controls; } ;
struct v4l2_ext_control {int dummy; } ;
struct hdpvr_fh {struct hdpvr_device* dev; } ;
struct hdpvr_device {int flags; } ;
struct file {struct hdpvr_fh* private_data; } ;


 int EINVAL ;
 int HDPVR_FLAG_AC3_CAP ;
 scalar_t__ V4L2_CTRL_CLASS_MPEG ;
 int hdpvr_try_ctrl (struct v4l2_ext_control*,int) ;

__attribute__((used)) static int vidioc_try_ext_ctrls(struct file *file, void *priv,
    struct v4l2_ext_controls *ctrls)
{
 struct hdpvr_fh *fh = file->private_data;
 struct hdpvr_device *dev = fh->dev;
 int i, err = 0;

 if (ctrls->ctrl_class == V4L2_CTRL_CLASS_MPEG) {
  for (i = 0; i < ctrls->count; i++) {
   struct v4l2_ext_control *ctrl = ctrls->controls + i;

   err = hdpvr_try_ctrl(ctrl,
          dev->flags & HDPVR_FLAG_AC3_CAP);
   if (err) {
    ctrls->error_idx = i;
    break;
   }
  }
  return err;
 }

 return -EINVAL;
}
