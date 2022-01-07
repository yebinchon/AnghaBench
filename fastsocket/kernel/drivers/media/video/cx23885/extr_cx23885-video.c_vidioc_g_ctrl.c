
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_control {int dummy; } ;
struct file {int dummy; } ;
struct cx23885_fh {struct cx23885_dev* dev; } ;
struct cx23885_dev {int dummy; } ;


 int cx23885_get_control (struct cx23885_dev*,struct v4l2_control*) ;

__attribute__((used)) static int vidioc_g_ctrl(struct file *file, void *priv,
    struct v4l2_control *ctl)
{
 struct cx23885_dev *dev = ((struct cx23885_fh *)priv)->dev;

 return cx23885_get_control(dev, ctl);
}
