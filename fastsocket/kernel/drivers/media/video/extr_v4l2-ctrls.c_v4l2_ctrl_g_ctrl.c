
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ctrl {int dummy; } ;
typedef int s32 ;


 int WARN_ON (int) ;
 int get_ctrl (struct v4l2_ctrl*,int *) ;
 int type_is_int (struct v4l2_ctrl*) ;

s32 v4l2_ctrl_g_ctrl(struct v4l2_ctrl *ctrl)
{
 s32 val = 0;


 WARN_ON(!type_is_int(ctrl));
 get_ctrl(ctrl, &val);
 return val;
}
