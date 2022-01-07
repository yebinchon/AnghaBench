
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_ext_control {int value; int value64; int string; int size; } ;
struct v4l2_ctrl {int type; int val; int val64; int string; int maximum; } ;


 int EFAULT ;
 int ENOSPC ;


 int copy_to_user (int ,int ,int ) ;
 int strlen (int ) ;

__attribute__((used)) static int new_to_user(struct v4l2_ext_control *c,
         struct v4l2_ctrl *ctrl)
{
 u32 len;

 switch (ctrl->type) {
 case 128:
  len = strlen(ctrl->string);
  if (c->size < len + 1) {
   c->size = ctrl->maximum + 1;
   return -ENOSPC;
  }
  return copy_to_user(c->string, ctrl->string,
      len + 1) ? -EFAULT : 0;
 case 129:
  c->value64 = ctrl->val64;
  break;
 default:
  c->value = ctrl->val;
  break;
 }
 return 0;
}
