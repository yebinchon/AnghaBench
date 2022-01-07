
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ext_controls {int dummy; } ;
struct v4l2_ctrl_handler {int dummy; } ;


 int try_set_ext_ctrls (struct v4l2_ctrl_handler*,struct v4l2_ext_controls*,int) ;

int v4l2_s_ext_ctrls(struct v4l2_ctrl_handler *hdl, struct v4l2_ext_controls *cs)
{
 return try_set_ext_ctrls(hdl, cs, 1);
}
