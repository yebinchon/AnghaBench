
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {scalar_t__ index; } ;
struct file {int dummy; } ;
struct cx231xx_fh {struct cx231xx* dev; } ;
struct cx231xx {int dummy; } ;


 int EINVAL ;
 int call_all (struct cx231xx*,int ,int ,struct v4l2_tuner*) ;
 int s_tuner ;
 int tuner ;

__attribute__((used)) static int radio_s_tuner(struct file *file, void *priv, struct v4l2_tuner *t)
{
 struct cx231xx *dev = ((struct cx231xx_fh *)priv)->dev;

 if (0 != t->index)
  return -EINVAL;

 call_all(dev, tuner, s_tuner, t);

 return 0;
}
