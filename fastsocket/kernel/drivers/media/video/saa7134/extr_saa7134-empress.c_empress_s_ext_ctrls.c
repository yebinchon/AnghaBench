
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ext_controls {scalar_t__ count; scalar_t__ ctrl_class; } ;
struct saa7134_dev {int dummy; } ;
struct file {struct saa7134_dev* private_data; } ;


 int EINVAL ;
 scalar_t__ V4L2_CTRL_CLASS_MPEG ;
 int core ;
 int s_ext_ctrls ;
 int saa_call_empress (struct saa7134_dev*,int ,int ,struct v4l2_ext_controls*) ;
 int ts_init_encoder (struct saa7134_dev*) ;

__attribute__((used)) static int empress_s_ext_ctrls(struct file *file, void *priv,
          struct v4l2_ext_controls *ctrls)
{
 struct saa7134_dev *dev = file->private_data;
 int err;



 if (ctrls->count == 0)
  return 0;

 if (ctrls->ctrl_class != V4L2_CTRL_CLASS_MPEG)
  return -EINVAL;

 err = saa_call_empress(dev, core, s_ext_ctrls, ctrls);
 ts_init_encoder(dev);

 return err;
}
