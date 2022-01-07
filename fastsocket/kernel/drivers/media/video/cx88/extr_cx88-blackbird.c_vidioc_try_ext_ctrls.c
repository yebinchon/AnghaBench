
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ext_controls {scalar_t__ ctrl_class; } ;
struct file {int dummy; } ;
struct cx8802_fh {struct cx8802_dev* dev; } ;
struct cx2341x_mpeg_params {int dummy; } ;
struct cx8802_dev {struct cx2341x_mpeg_params params; } ;


 int EINVAL ;
 scalar_t__ V4L2_CTRL_CLASS_MPEG ;
 int VIDIOC_TRY_EXT_CTRLS ;
 int cx2341x_ext_ctrls (struct cx2341x_mpeg_params*,int ,struct v4l2_ext_controls*,int ) ;

__attribute__((used)) static int vidioc_try_ext_ctrls (struct file *file, void *priv,
          struct v4l2_ext_controls *f)
{
 struct cx8802_dev *dev = ((struct cx8802_fh *)priv)->dev;
 struct cx2341x_mpeg_params p;
 int err;

 if (f->ctrl_class != V4L2_CTRL_CLASS_MPEG)
  return -EINVAL;
 p = dev->params;
 err = cx2341x_ext_ctrls(&p, 0, f, VIDIOC_TRY_EXT_CTRLS);

 return err;
}
