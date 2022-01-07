
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {scalar_t__ index; int afc; int signal; int type; } ;
struct file {int dummy; } ;
struct au0828_fh {struct au0828_dev* dev; } ;
struct au0828_dev {int v4l2_dev; } ;


 int EINVAL ;
 int V4L2_TUNER_ANALOG_TV ;
 int dprintk (int,char*,int ,int ) ;
 int s_tuner ;
 int tuner ;
 int v4l2_device_call_all (int *,int ,int ,int ,struct v4l2_tuner*) ;

__attribute__((used)) static int vidioc_s_tuner(struct file *file, void *priv,
    struct v4l2_tuner *t)
{
 struct au0828_fh *fh = priv;
 struct au0828_dev *dev = fh->dev;

 if (t->index != 0)
  return -EINVAL;

 t->type = V4L2_TUNER_ANALOG_TV;
 v4l2_device_call_all(&dev->v4l2_dev, 0, tuner, s_tuner, t);
 dprintk(1, "VIDIOC_S_TUNER: signal = %x, afc = %x\n", t->signal,
  t->afc);
 return 0;

}
