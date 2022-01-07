
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ext_controls {scalar_t__ ctrl_class; int count; int error_idx; int * controls; } ;
struct file {int dummy; } ;
struct cx18_open_id {struct cx18* cx; } ;
struct cx18 {int ana_capturing; int params; } ;


 int EINVAL ;
 scalar_t__ V4L2_CTRL_CLASS_MPEG ;
 scalar_t__ V4L2_CTRL_CLASS_USER ;
 int VIDIOC_TRY_EXT_CTRLS ;
 int atomic_read (int *) ;
 int cx18_try_ctrl (struct file*,void*,int *) ;
 int cx2341x_ext_ctrls (int *,int ,struct v4l2_ext_controls*,int ) ;

int cx18_try_ext_ctrls(struct file *file, void *fh, struct v4l2_ext_controls *c)
{
 struct cx18 *cx = ((struct cx18_open_id *)fh)->cx;

 if (c->ctrl_class == V4L2_CTRL_CLASS_USER) {
  int i;
  int err = 0;

  for (i = 0; i < c->count; i++) {
   err = cx18_try_ctrl(file, fh, &c->controls[i]);
   if (err) {
    c->error_idx = i;
    break;
   }
  }
  return err;
 }
 if (c->ctrl_class == V4L2_CTRL_CLASS_MPEG)
  return cx2341x_ext_ctrls(&cx->params,
      atomic_read(&cx->ana_capturing),
      c, VIDIOC_TRY_EXT_CTRLS);
 return -EINVAL;
}
