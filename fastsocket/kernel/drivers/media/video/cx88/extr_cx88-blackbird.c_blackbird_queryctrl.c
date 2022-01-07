
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_queryctrl {scalar_t__ id; int flags; } ;
struct cx8802_dev {int params; int core; } ;


 int EINVAL ;
 int V4L2_CTRL_FLAG_DISABLED ;
 int ctrl_classes ;
 scalar_t__ cx2341x_ctrl_query (int *,struct v4l2_queryctrl*) ;
 scalar_t__ cx8800_ctrl_query (int ,struct v4l2_queryctrl*) ;
 scalar_t__ v4l2_ctrl_next (int ,scalar_t__) ;

__attribute__((used)) static int blackbird_queryctrl(struct cx8802_dev *dev, struct v4l2_queryctrl *qctrl)
{
 qctrl->id = v4l2_ctrl_next(ctrl_classes, qctrl->id);
 if (qctrl->id == 0)
  return -EINVAL;


 if (cx8800_ctrl_query(dev->core, qctrl) == 0)
  return 0;


 if (cx2341x_ctrl_query(&dev->params, qctrl))
  qctrl->flags |= V4L2_CTRL_FLAG_DISABLED;
 return 0;
}
