
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {scalar_t__ index; int rangehigh; int signal; int capability; int type; int name; } ;
struct file {int dummy; } ;
struct cx231xx_fh {struct cx231xx* dev; } ;
struct cx231xx {int dummy; } ;


 int EINVAL ;
 int V4L2_TUNER_ANALOG_TV ;
 int V4L2_TUNER_CAP_NORM ;
 int check_dev (struct cx231xx*) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int vidioc_g_tuner(struct file *file, void *priv, struct v4l2_tuner *t)
{
 struct cx231xx_fh *fh = priv;
 struct cx231xx *dev = fh->dev;
 int rc;

 rc = check_dev(dev);
 if (rc < 0)
  return rc;

 if (0 != t->index)
  return -EINVAL;

 strcpy(t->name, "Tuner");

 t->type = V4L2_TUNER_ANALOG_TV;
 t->capability = V4L2_TUNER_CAP_NORM;
 t->rangehigh = 0xffffffffUL;
 t->signal = 0xffff;

 return 0;
}
