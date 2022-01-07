
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_control {int dummy; } ;
struct file {struct cx231xx_fh* private_data; } ;
struct cx231xx_fh {struct cx231xx* dev; } ;
struct cx231xx {int dummy; } ;


 int call_all (struct cx231xx*,int ,int ,struct v4l2_control*) ;
 int core ;
 int dprintk (int,char*) ;
 int s_ctrl ;

__attribute__((used)) static int vidioc_s_ctrl(struct file *file, void *priv,
    struct v4l2_control *ctl)
{
 struct cx231xx_fh *fh = file->private_data;
 struct cx231xx *dev = fh->dev;
 dprintk(3, "enter vidioc_s_ctrl()\n");

 call_all(dev, core, s_ctrl, ctl);
 dprintk(3, "exit vidioc_s_ctrl()\n");
 return 0;
}
