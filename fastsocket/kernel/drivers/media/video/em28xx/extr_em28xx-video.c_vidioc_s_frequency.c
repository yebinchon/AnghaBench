
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {scalar_t__ tuner; scalar_t__ type; int frequency; } ;
struct file {int dummy; } ;
struct em28xx_fh {int radio; struct em28xx* dev; } ;
struct em28xx {int v4l2_dev; int ctl_freq; } ;


 int EINVAL ;
 scalar_t__ V4L2_TUNER_ANALOG_TV ;
 scalar_t__ V4L2_TUNER_RADIO ;
 int check_dev (struct em28xx*) ;
 int s_frequency ;
 int tuner ;
 scalar_t__ unlikely (int) ;
 int v4l2_device_call_all (int *,int ,int ,int ,struct v4l2_frequency*) ;

__attribute__((used)) static int vidioc_s_frequency(struct file *file, void *priv,
    struct v4l2_frequency *f)
{
 struct em28xx_fh *fh = priv;
 struct em28xx *dev = fh->dev;
 int rc;

 rc = check_dev(dev);
 if (rc < 0)
  return rc;

 if (0 != f->tuner)
  return -EINVAL;

 if (unlikely(0 == fh->radio && f->type != V4L2_TUNER_ANALOG_TV))
  return -EINVAL;
 if (unlikely(1 == fh->radio && f->type != V4L2_TUNER_RADIO))
  return -EINVAL;

 dev->ctl_freq = f->frequency;
 v4l2_device_call_all(&dev->v4l2_dev, 0, tuner, s_frequency, f);

 return 0;
}
