
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int ctrl_handler; } ;
struct v4l2_control {int dummy; } ;


 int v4l2_g_ctrl (int ,struct v4l2_control*) ;

int v4l2_subdev_g_ctrl(struct v4l2_subdev *sd, struct v4l2_control *control)
{
 return v4l2_g_ctrl(sd->ctrl_handler, control);
}
