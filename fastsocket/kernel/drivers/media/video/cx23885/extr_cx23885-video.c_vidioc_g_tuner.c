
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {scalar_t__ index; int rangehigh; int signal; int capability; int type; int name; } ;
struct file {int dummy; } ;
struct cx23885_fh {struct cx23885_dev* dev; } ;
struct cx23885_dev {scalar_t__ tuner_type; } ;


 int EINVAL ;
 scalar_t__ UNSET ;
 int V4L2_TUNER_ANALOG_TV ;
 int V4L2_TUNER_CAP_NORM ;
 int strcpy (int ,char*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int vidioc_g_tuner(struct file *file, void *priv,
    struct v4l2_tuner *t)
{
 struct cx23885_dev *dev = ((struct cx23885_fh *)priv)->dev;

 if (unlikely(UNSET == dev->tuner_type))
  return -EINVAL;
 if (0 != t->index)
  return -EINVAL;

 strcpy(t->name, "Television");
 t->type = V4L2_TUNER_ANALOG_TV;
 t->capability = V4L2_TUNER_CAP_NORM;
 t->rangehigh = 0xffffffffUL;
 t->signal = 0xffff ;
 return 0;
}
