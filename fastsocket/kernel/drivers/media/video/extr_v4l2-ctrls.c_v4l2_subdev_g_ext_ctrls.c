
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int ctrl_handler; } ;
struct v4l2_ext_controls {int dummy; } ;


 int v4l2_g_ext_ctrls (int ,struct v4l2_ext_controls*) ;

int v4l2_subdev_g_ext_ctrls(struct v4l2_subdev *sd, struct v4l2_ext_controls *cs)
{
 return v4l2_g_ext_ctrls(sd->ctrl_handler, cs);
}
