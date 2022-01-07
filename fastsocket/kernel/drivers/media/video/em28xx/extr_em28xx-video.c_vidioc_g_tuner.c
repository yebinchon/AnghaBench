
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {scalar_t__ index; int type; int name; } ;
struct file {int dummy; } ;
struct em28xx_fh {struct em28xx* dev; } ;
struct em28xx {int v4l2_dev; } ;


 int EINVAL ;
 int V4L2_TUNER_ANALOG_TV ;
 int check_dev (struct em28xx*) ;
 int g_tuner ;
 int strcpy (int ,char*) ;
 int tuner ;
 int v4l2_device_call_all (int *,int ,int ,int ,struct v4l2_tuner*) ;

__attribute__((used)) static int vidioc_g_tuner(struct file *file, void *priv,
    struct v4l2_tuner *t)
{
 struct em28xx_fh *fh = priv;
 struct em28xx *dev = fh->dev;
 int rc;

 rc = check_dev(dev);
 if (rc < 0)
  return rc;

 if (0 != t->index)
  return -EINVAL;

 strcpy(t->name, "Tuner");
 t->type = V4L2_TUNER_ANALOG_TV;

 v4l2_device_call_all(&dev->v4l2_dev, 0, tuner, g_tuner, t);
 return 0;
}
