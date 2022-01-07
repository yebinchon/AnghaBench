
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ext_controls {scalar_t__ ctrl_class; } ;
struct file {int dummy; } ;
struct cx8802_fh {struct cx8802_dev* dev; } ;
struct cx8802_dev {int params; } ;


 int EINVAL ;
 scalar_t__ V4L2_CTRL_CLASS_MPEG ;
 int VIDIOC_G_EXT_CTRLS ;
 int cx2341x_ext_ctrls (int *,int ,struct v4l2_ext_controls*,int ) ;

__attribute__((used)) static int vidioc_g_ext_ctrls (struct file *file, void *priv,
          struct v4l2_ext_controls *f)
{
 struct cx8802_dev *dev = ((struct cx8802_fh *)priv)->dev;

 if (f->ctrl_class != V4L2_CTRL_CLASS_MPEG)
  return -EINVAL;
 return cx2341x_ext_ctrls(&dev->params, 0, f, VIDIOC_G_EXT_CTRLS);
}
