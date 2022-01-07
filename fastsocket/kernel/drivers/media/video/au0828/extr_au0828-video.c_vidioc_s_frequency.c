
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {scalar_t__ tuner; scalar_t__ type; int frequency; } ;
struct file {int dummy; } ;
struct au0828_fh {struct au0828_dev* dev; } ;
struct au0828_dev {int v4l2_dev; int ctrl_freq; } ;


 int EINVAL ;
 scalar_t__ V4L2_TUNER_ANALOG_TV ;
 int au0828_analog_stream_reset (struct au0828_dev*) ;
 int s_frequency ;
 int tuner ;
 int v4l2_device_call_all (int *,int ,int ,int ,struct v4l2_frequency*) ;

__attribute__((used)) static int vidioc_s_frequency(struct file *file, void *priv,
    struct v4l2_frequency *freq)
{
 struct au0828_fh *fh = priv;
 struct au0828_dev *dev = fh->dev;

 if (freq->tuner != 0)
  return -EINVAL;
 if (freq->type != V4L2_TUNER_ANALOG_TV)
  return -EINVAL;

 dev->ctrl_freq = freq->frequency;

 v4l2_device_call_all(&dev->v4l2_dev, 0, tuner, s_frequency, freq);

 au0828_analog_stream_reset(dev);

 return 0;
}
