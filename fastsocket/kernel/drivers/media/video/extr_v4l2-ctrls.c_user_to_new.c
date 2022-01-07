
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_ext_control {int value; int string; int size; int value64; } ;
struct v4l2_ctrl {int has_new; int type; char* string; int val; int maximum; int val64; } ;


 int EFAULT ;
 int ERANGE ;


 int copy_from_user (char*,int ,int ) ;
 int strlen (char*) ;

__attribute__((used)) static int user_to_new(struct v4l2_ext_control *c,
         struct v4l2_ctrl *ctrl)
{
 int ret;
 u32 size;

 ctrl->has_new = 1;
 switch (ctrl->type) {
 case 129:
  ctrl->val64 = c->value64;
  break;
 case 128:
  size = c->size;
  if (size == 0)
   return -ERANGE;
  if (size > ctrl->maximum + 1)
   size = ctrl->maximum + 1;
  ret = copy_from_user(ctrl->string, c->string, size);
  if (!ret) {
   char last = ctrl->string[size - 1];

   ctrl->string[size - 1] = 0;


   if (strlen(ctrl->string) == ctrl->maximum && last)
    return -ERANGE;
  }
  return ret ? -EFAULT : 0;
 default:
  ctrl->val = c->value;
  break;
 }
 return 0;
}
