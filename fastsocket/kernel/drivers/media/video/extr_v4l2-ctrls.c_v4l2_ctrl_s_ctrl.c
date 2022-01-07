
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ctrl {int dummy; } ;
typedef int s32 ;


 int WARN_ON (int) ;
 int set_ctrl (struct v4l2_ctrl*,int *) ;
 int type_is_int (struct v4l2_ctrl*) ;

int v4l2_ctrl_s_ctrl(struct v4l2_ctrl *ctrl, s32 val)
{

 WARN_ON(!type_is_int(ctrl));
 return set_ctrl(ctrl, &val);
}
