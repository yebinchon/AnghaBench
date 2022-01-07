
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_queryctrl {int dummy; } ;
struct file {int dummy; } ;
struct cx23885_fh {struct cx23885_dev* dev; } ;
struct cx23885_dev {int dummy; } ;


 int cx23885_queryctrl (struct cx23885_dev*,struct v4l2_queryctrl*) ;

__attribute__((used)) static int vidioc_queryctrl(struct file *file, void *priv,
    struct v4l2_queryctrl *c)
{
 struct cx23885_fh *fh = priv;
 struct cx23885_dev *dev = fh->dev;

 return cx23885_queryctrl(dev, c);
}
