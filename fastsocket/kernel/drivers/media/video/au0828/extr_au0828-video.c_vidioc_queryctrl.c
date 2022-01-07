
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_queryctrl {scalar_t__ type; } ;
struct file {int dummy; } ;
struct au0828_fh {struct au0828_dev* dev; } ;
struct au0828_dev {int v4l2_dev; } ;


 int EINVAL ;
 int core ;
 int queryctrl ;
 int v4l2_device_call_all (int *,int ,int ,int ,struct v4l2_queryctrl*) ;

__attribute__((used)) static int vidioc_queryctrl(struct file *file, void *priv,
       struct v4l2_queryctrl *qc)
{
 struct au0828_fh *fh = priv;
 struct au0828_dev *dev = fh->dev;
 v4l2_device_call_all(&dev->v4l2_dev, 0, core, queryctrl, qc);
 if (qc->type)
  return 0;
 else
  return -EINVAL;
}
