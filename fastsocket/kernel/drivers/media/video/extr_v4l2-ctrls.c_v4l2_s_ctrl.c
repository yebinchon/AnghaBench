
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ctrl_handler {int dummy; } ;
struct v4l2_ctrl {int dummy; } ;
struct v4l2_control {int value; int id; } ;


 int EINVAL ;
 int set_ctrl (struct v4l2_ctrl*,int *) ;
 int type_is_int (struct v4l2_ctrl*) ;
 struct v4l2_ctrl* v4l2_ctrl_find (struct v4l2_ctrl_handler*,int ) ;

int v4l2_s_ctrl(struct v4l2_ctrl_handler *hdl, struct v4l2_control *control)
{
 struct v4l2_ctrl *ctrl = v4l2_ctrl_find(hdl, control->id);

 if (ctrl == ((void*)0) || !type_is_int(ctrl))
  return -EINVAL;

 return set_ctrl(ctrl, &control->value);
}
