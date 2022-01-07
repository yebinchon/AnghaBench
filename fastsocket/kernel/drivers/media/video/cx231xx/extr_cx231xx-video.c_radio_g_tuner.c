
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {scalar_t__ index; int type; int name; } ;
struct file {int dummy; } ;
struct cx231xx_fh {struct cx231xx* dev; } ;
struct cx231xx {int dummy; } ;


 int EINVAL ;
 int V4L2_TUNER_RADIO ;
 int call_all (struct cx231xx*,int ,int ,struct v4l2_tuner*) ;
 int s_tuner ;
 int strcpy (int ,char*) ;
 int tuner ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int radio_g_tuner(struct file *file, void *priv, struct v4l2_tuner *t)
{
 struct cx231xx *dev = ((struct cx231xx_fh *)priv)->dev;

 if (unlikely(t->index > 0))
  return -EINVAL;

 strcpy(t->name, "Radio");
 t->type = V4L2_TUNER_RADIO;

 call_all(dev, tuner, s_tuner, t);

 return 0;
}
