
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {int frequency; int type; } ;
struct file {int dummy; } ;
struct cx23885_fh {scalar_t__ radio; struct cx23885_dev* dev; } ;
struct cx23885_dev {scalar_t__ tuner_type; int freq; } ;


 int EINVAL ;
 scalar_t__ UNSET ;
 int V4L2_TUNER_ANALOG_TV ;
 int V4L2_TUNER_RADIO ;
 int call_all (struct cx23885_dev*,int ,int ,struct v4l2_frequency*) ;
 int g_frequency ;
 int tuner ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int vidioc_g_frequency(struct file *file, void *priv,
    struct v4l2_frequency *f)
{
 struct cx23885_fh *fh = priv;
 struct cx23885_dev *dev = fh->dev;

 if (unlikely(UNSET == dev->tuner_type))
  return -EINVAL;


 f->type = fh->radio ? V4L2_TUNER_RADIO : V4L2_TUNER_ANALOG_TV;
 f->frequency = dev->freq;

 call_all(dev, tuner, g_frequency, f);

 return 0;
}
