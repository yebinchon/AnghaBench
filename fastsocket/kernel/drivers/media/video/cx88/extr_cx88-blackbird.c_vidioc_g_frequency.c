
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_frequency {int frequency; int type; } ;
struct file {int dummy; } ;
struct TYPE_4__ {scalar_t__ tuner_type; } ;
struct cx88_core {int freq; TYPE_2__ board; } ;
struct cx8802_fh {TYPE_1__* dev; } ;
struct TYPE_3__ {struct cx88_core* core; } ;


 int EINVAL ;
 scalar_t__ UNSET ;
 int V4L2_TUNER_ANALOG_TV ;
 int call_all (struct cx88_core*,int ,int ,struct v4l2_frequency*) ;
 int g_frequency ;
 int tuner ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int vidioc_g_frequency (struct file *file, void *priv,
    struct v4l2_frequency *f)
{
 struct cx8802_fh *fh = priv;
 struct cx88_core *core = fh->dev->core;

 if (unlikely(UNSET == core->board.tuner_type))
  return -EINVAL;

 f->type = V4L2_TUNER_ANALOG_TV;
 f->frequency = core->freq;
 call_all(core, tuner, g_frequency, f);

 return 0;
}
