
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_queryctrl {scalar_t__ id; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int ctrl_classes ;
 int cx23885_ctrl_query (struct v4l2_queryctrl*) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ v4l2_ctrl_next (int ,scalar_t__) ;

__attribute__((used)) static int vidioc_queryctrl(struct file *file, void *priv,
    struct v4l2_queryctrl *qctrl)
{
 qctrl->id = v4l2_ctrl_next(ctrl_classes, qctrl->id);
 if (unlikely(qctrl->id == 0))
  return -EINVAL;
 return cx23885_ctrl_query(qctrl);
}
