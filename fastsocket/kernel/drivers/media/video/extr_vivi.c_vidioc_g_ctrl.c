
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vivi_fh {struct vivi_dev* dev; } ;
struct vivi_dev {int * qctl_regs; } ;
struct v4l2_control {scalar_t__ id; int value; } ;
struct file {int dummy; } ;
struct TYPE_3__ {scalar_t__ id; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 TYPE_1__* vivi_qctrl ;

__attribute__((used)) static int vidioc_g_ctrl(struct file *file, void *priv,
    struct v4l2_control *ctrl)
{
 struct vivi_fh *fh = priv;
 struct vivi_dev *dev = fh->dev;
 int i;

 for (i = 0; i < ARRAY_SIZE(vivi_qctrl); i++)
  if (ctrl->id == vivi_qctrl[i].id) {
   ctrl->value = dev->qctl_regs[i];
   return 0;
  }

 return -EINVAL;
}
