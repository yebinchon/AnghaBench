
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {scalar_t__ index; } ;
struct file {int dummy; } ;
struct cx23885_fh {struct cx23885_dev* dev; } ;
struct cx23885_dev {scalar_t__ tuner_type; } ;


 int EINVAL ;
 scalar_t__ UNSET ;

__attribute__((used)) static int vidioc_s_tuner(struct file *file, void *priv,
    struct v4l2_tuner *t)
{
 struct cx23885_dev *dev = ((struct cx23885_fh *)priv)->dev;

 if (UNSET == dev->tuner_type)
  return -EINVAL;
 if (0 != t->index)
  return -EINVAL;
 return 0;
}
