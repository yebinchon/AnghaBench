
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ctrl {int flags; } ;


 int clear_bit (int,int *) ;
 int set_bit (int,int *) ;

void v4l2_ctrl_grab(struct v4l2_ctrl *ctrl, bool grabbed)
{
 if (ctrl == ((void*)0))
  return;

 if (grabbed)

  set_bit(1, &ctrl->flags);
 else

  clear_bit(1, &ctrl->flags);
}
