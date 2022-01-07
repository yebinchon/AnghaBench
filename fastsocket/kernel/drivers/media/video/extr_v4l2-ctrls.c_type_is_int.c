
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ctrl {int type; } ;





__attribute__((used)) static bool type_is_int(const struct v4l2_ctrl *ctrl)
{
 switch (ctrl->type) {
 case 129:
 case 128:

  return 0;
 default:
  return 1;
 }
}
