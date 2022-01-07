
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_queryctrl {scalar_t__ id; } ;
struct file {int dummy; } ;
struct cx88_core {int dummy; } ;
struct cx8800_fh {TYPE_1__* dev; } ;
struct TYPE_2__ {struct cx88_core* core; } ;


 int EINVAL ;
 int ctrl_classes ;
 int cx8800_ctrl_query (struct cx88_core*,struct v4l2_queryctrl*) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ v4l2_ctrl_next (int ,scalar_t__) ;

__attribute__((used)) static int vidioc_queryctrl (struct file *file, void *priv,
    struct v4l2_queryctrl *qctrl)
{
 struct cx88_core *core = ((struct cx8800_fh *)priv)->dev->core;

 qctrl->id = v4l2_ctrl_next(ctrl_classes, qctrl->id);
 if (unlikely(qctrl->id == 0))
  return -EINVAL;
 return cx8800_ctrl_query(core, qctrl);
}
