
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_control {int dummy; } ;
struct file {int dummy; } ;
struct au0828_fh {struct au0828_dev* dev; } ;
struct au0828_dev {int v4l2_dev; } ;


 int core ;
 int g_ctrl ;
 int v4l2_device_call_all (int *,int ,int ,int ,struct v4l2_control*) ;

__attribute__((used)) static int vidioc_g_ctrl(struct file *file, void *priv,
    struct v4l2_control *ctrl)
{
 struct au0828_fh *fh = priv;
 struct au0828_dev *dev = fh->dev;

 v4l2_device_call_all(&dev->v4l2_dev, 0, core, g_ctrl, ctrl);
 return 0;

}
