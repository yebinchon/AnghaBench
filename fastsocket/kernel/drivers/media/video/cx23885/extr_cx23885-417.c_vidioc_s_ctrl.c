
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_control {int dummy; } ;
struct file {struct cx23885_fh* private_data; } ;
struct cx23885_fh {struct cx23885_dev* dev; } ;
struct cx23885_dev {int dummy; } ;


 int call_all (struct cx23885_dev*,int ,int ,struct v4l2_control*) ;
 int core ;
 int s_ctrl ;

__attribute__((used)) static int vidioc_s_ctrl(struct file *file, void *priv,
    struct v4l2_control *ctl)
{
 struct cx23885_fh *fh = file->private_data;
 struct cx23885_dev *dev = fh->dev;


 call_all(dev, core, s_ctrl, ctl);
 return 0;
}
