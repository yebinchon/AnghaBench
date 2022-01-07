
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ext_controls {scalar_t__ ctrl_class; int count; int error_idx; struct v4l2_ext_control* controls; } ;
struct v4l2_ext_control {int dummy; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ V4L2_CTRL_CLASS_MPEG ;
 int saa7164_try_ctrl (struct v4l2_ext_control*,int ) ;

__attribute__((used)) static int vidioc_try_ext_ctrls(struct file *file, void *priv,
 struct v4l2_ext_controls *ctrls)
{
 int i, err = 0;

 if (ctrls->ctrl_class == V4L2_CTRL_CLASS_MPEG) {
  for (i = 0; i < ctrls->count; i++) {
   struct v4l2_ext_control *ctrl = ctrls->controls + i;

   err = saa7164_try_ctrl(ctrl, 0);
   if (err) {
    ctrls->error_idx = i;
    break;
   }
  }
  return err;
 }

 return -EINVAL;
}
