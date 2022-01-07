
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {scalar_t__ index; int type; int name; } ;
struct file {struct cx23885_fh* private_data; } ;
struct cx23885_fh {struct cx23885_dev* dev; } ;
struct cx23885_dev {scalar_t__ tuner_type; } ;


 int EINVAL ;
 scalar_t__ UNSET ;
 int call_all (struct cx23885_dev*,int ,int ,struct v4l2_tuner*) ;
 int dprintk (int,char*,int ) ;
 int g_tuner ;
 int strcpy (int ,char*) ;
 int tuner ;

__attribute__((used)) static int vidioc_g_tuner(struct file *file, void *priv,
    struct v4l2_tuner *t)
{
 struct cx23885_fh *fh = file->private_data;
 struct cx23885_dev *dev = fh->dev;

 if (UNSET == dev->tuner_type)
  return -EINVAL;
 if (0 != t->index)
  return -EINVAL;
 strcpy(t->name, "Television");
 call_all(dev, tuner, g_tuner, t);

 dprintk(1, "VIDIOC_G_TUNER: tuner type %d\n", t->type);

 return 0;
}
