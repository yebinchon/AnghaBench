
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {int dummy; } ;
struct file {struct cx23885_fh* private_data; } ;
struct cx23885_fh {struct cx23885_dev* dev; } ;
struct cx23885_dev {scalar_t__ tuner_type; } ;


 int EINVAL ;
 scalar_t__ UNSET ;
 int call_all (struct cx23885_dev*,int ,int ,struct v4l2_tuner*) ;
 int s_tuner ;
 int tuner ;

__attribute__((used)) static int vidioc_s_tuner(struct file *file, void *priv,
    struct v4l2_tuner *t)
{
 struct cx23885_fh *fh = file->private_data;
 struct cx23885_dev *dev = fh->dev;

 if (UNSET == dev->tuner_type)
  return -EINVAL;


 call_all(dev, tuner, s_tuner, t);

 return 0;
}
