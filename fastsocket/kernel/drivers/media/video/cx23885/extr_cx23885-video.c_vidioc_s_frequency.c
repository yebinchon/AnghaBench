
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {scalar_t__ type; } ;
struct file {int dummy; } ;
struct cx23885_fh {int radio; struct cx23885_dev* dev; } ;
struct cx23885_dev {int dummy; } ;


 int EINVAL ;
 scalar_t__ V4L2_TUNER_ANALOG_TV ;
 scalar_t__ V4L2_TUNER_RADIO ;
 int cx23885_set_freq (struct cx23885_dev*,struct v4l2_frequency*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int vidioc_s_frequency(struct file *file, void *priv,
    struct v4l2_frequency *f)
{
 struct cx23885_fh *fh = priv;
 struct cx23885_dev *dev = fh->dev;

 if (unlikely(0 == fh->radio && f->type != V4L2_TUNER_ANALOG_TV))
  return -EINVAL;
 if (unlikely(1 == fh->radio && f->type != V4L2_TUNER_RADIO))
  return -EINVAL;

 return
  cx23885_set_freq(dev, f);
}
