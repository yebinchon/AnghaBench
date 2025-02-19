
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_frequency {scalar_t__ type; } ;
struct file {int dummy; } ;
struct cx88_core {int dummy; } ;
struct cx8800_fh {int radio; TYPE_1__* dev; } ;
struct TYPE_2__ {struct cx88_core* core; } ;


 int EINVAL ;
 scalar_t__ V4L2_TUNER_ANALOG_TV ;
 scalar_t__ V4L2_TUNER_RADIO ;
 int cx88_set_freq (struct cx88_core*,struct v4l2_frequency*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int vidioc_s_frequency (struct file *file, void *priv,
    struct v4l2_frequency *f)
{
 struct cx8800_fh *fh = priv;
 struct cx88_core *core = fh->dev->core;

 if (unlikely(0 == fh->radio && f->type != V4L2_TUNER_ANALOG_TV))
  return -EINVAL;
 if (unlikely(1 == fh->radio && f->type != V4L2_TUNER_RADIO))
  return -EINVAL;

 return
  cx88_set_freq (core,f);
}
