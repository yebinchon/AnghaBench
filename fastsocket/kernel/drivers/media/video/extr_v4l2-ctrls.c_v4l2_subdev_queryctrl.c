
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int ctrl_handler; } ;
struct v4l2_queryctrl {int id; } ;


 int EINVAL ;
 int V4L2_CTRL_FLAG_NEXT_CTRL ;
 int v4l2_queryctrl (int ,struct v4l2_queryctrl*) ;

int v4l2_subdev_queryctrl(struct v4l2_subdev *sd, struct v4l2_queryctrl *qc)
{
 if (qc->id & V4L2_CTRL_FLAG_NEXT_CTRL)
  return -EINVAL;
 return v4l2_queryctrl(sd->ctrl_handler, qc);
}
