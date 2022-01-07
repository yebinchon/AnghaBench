
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_control {int dummy; } ;
struct file {int dummy; } ;
struct cx231xx_fh {struct cx231xx* dev; } ;
struct cx231xx {int dummy; } ;


 int call_all (struct cx231xx*,int ,int ,struct v4l2_control*) ;
 int check_dev (struct cx231xx*) ;
 int core ;
 int g_ctrl ;

__attribute__((used)) static int vidioc_g_ctrl(struct file *file, void *priv,
    struct v4l2_control *ctrl)
{
 struct cx231xx_fh *fh = priv;
 struct cx231xx *dev = fh->dev;
 int rc;

 rc = check_dev(dev);
 if (rc < 0)
  return rc;

 call_all(dev, core, g_ctrl, ctrl);
 return rc;
}
