
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_querymenu {int id; } ;
struct saa7134_dev {int dummy; } ;
struct file {struct saa7134_dev* private_data; } ;


 int EINVAL ;
 scalar_t__ V4L2_CTRL_CLASS_MPEG ;
 scalar_t__ V4L2_CTRL_ID2CLASS (int ) ;
 int core ;
 int querymenu ;
 int saa_call_empress (struct saa7134_dev*,int ,int ,struct v4l2_querymenu*) ;

__attribute__((used)) static int empress_querymenu(struct file *file, void *priv,
     struct v4l2_querymenu *c)
{
 struct saa7134_dev *dev = file->private_data;

 if (V4L2_CTRL_ID2CLASS(c->id) != V4L2_CTRL_CLASS_MPEG)
  return -EINVAL;
 return saa_call_empress(dev, core, querymenu, c);
}
