
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ctrl_handler {scalar_t__ error; } ;
struct v4l2_ctrl {struct v4l2_ctrl_handler* handler; } ;


 int EINVAL ;
 scalar_t__ handler_new_ref (struct v4l2_ctrl_handler*,struct v4l2_ctrl*) ;
 int handler_set_err (struct v4l2_ctrl_handler*,int ) ;

struct v4l2_ctrl *v4l2_ctrl_add_ctrl(struct v4l2_ctrl_handler *hdl,
       struct v4l2_ctrl *ctrl)
{
 if (hdl == ((void*)0) || hdl->error)
  return ((void*)0);
 if (ctrl == ((void*)0)) {
  handler_set_err(hdl, -EINVAL);
  return ((void*)0);
 }
 if (ctrl->handler == hdl)
  return ctrl;
 return handler_new_ref(hdl, ctrl) ? ((void*)0) : ctrl;
}
