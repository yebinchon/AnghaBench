
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ext_controls {scalar_t__ ctrl_class; } ;
struct file {int dummy; } ;
struct cx2341x_mpeg_params {int dummy; } ;
struct cx231xx_fh {struct cx231xx* dev; } ;
struct cx231xx {struct cx2341x_mpeg_params mpeg_params; } ;


 int EINVAL ;
 scalar_t__ V4L2_CTRL_CLASS_MPEG ;
 int VIDIOC_TRY_EXT_CTRLS ;
 int cx231xx_mbox_func ;
 int cx2341x_ext_ctrls (struct cx2341x_mpeg_params*,int ,struct v4l2_ext_controls*,int ) ;
 int cx2341x_update (struct cx231xx*,int ,struct cx2341x_mpeg_params*,struct cx2341x_mpeg_params*) ;
 int dprintk (int,char*) ;

__attribute__((used)) static int vidioc_s_ext_ctrls(struct file *file, void *priv,
    struct v4l2_ext_controls *f)
{
 struct cx231xx_fh *fh = priv;
 struct cx231xx *dev = fh->dev;
 struct cx2341x_mpeg_params p;
 int err;
 dprintk(3, "enter vidioc_s_ext_ctrls()\n");
 if (f->ctrl_class != V4L2_CTRL_CLASS_MPEG)
  return -EINVAL;

 p = dev->mpeg_params;
 err = cx2341x_ext_ctrls(&p, 0, f, VIDIOC_TRY_EXT_CTRLS);
 if (err == 0) {
  err = cx2341x_update(dev, cx231xx_mbox_func,
   &dev->mpeg_params, &p);
  dev->mpeg_params = p;
 }

 return err;


return 0;
}
