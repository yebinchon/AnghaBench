
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ext_controls {scalar_t__ ctrl_class; } ;
struct saa7134_dev {int dummy; } ;
struct file {struct saa7134_dev* private_data; } ;


 int EINVAL ;
 scalar_t__ V4L2_CTRL_CLASS_MPEG ;
 int core ;
 int g_ext_ctrls ;
 int saa_call_empress (struct saa7134_dev*,int ,int ,struct v4l2_ext_controls*) ;

__attribute__((used)) static int empress_g_ext_ctrls(struct file *file, void *priv,
          struct v4l2_ext_controls *ctrls)
{
 struct saa7134_dev *dev = file->private_data;

 if (ctrls->ctrl_class != V4L2_CTRL_CLASS_MPEG)
  return -EINVAL;
 return saa_call_empress(dev, core, g_ext_ctrls, ctrls);
}
