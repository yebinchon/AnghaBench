
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ctrl {int flags; } ;


 int clear_bit (int,int *) ;
 int set_bit (int,int *) ;

void v4l2_ctrl_activate(struct v4l2_ctrl *ctrl, bool active)
{
 if (ctrl == ((void*)0))
  return;

 if (!active)

  set_bit(4, &ctrl->flags);
 else

  clear_bit(4, &ctrl->flags);
}
