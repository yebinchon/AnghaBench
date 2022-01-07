
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_ctrl {int val; char* string; int type; int step; int minimum; int maximum; char** qmenu; int menu_skip_mask; int val64; } ;
typedef int s32 ;


 int EINVAL ;
 int ERANGE ;







 size_t strlen (char*) ;

__attribute__((used)) static int validate_new(struct v4l2_ctrl *ctrl)
{
 s32 val = ctrl->val;
 char *s = ctrl->string;
 u32 offset;
 size_t len;

 switch (ctrl->type) {
 case 131:

  val += ctrl->step / 2;
  if (val < ctrl->minimum)
   val = ctrl->minimum;
  if (val > ctrl->maximum)
   val = ctrl->maximum;
  offset = val - ctrl->minimum;
  offset = ctrl->step * (offset / ctrl->step);
  val = ctrl->minimum + offset;
  ctrl->val = val;
  return 0;

 case 134:
  ctrl->val = !!ctrl->val;
  return 0;

 case 129:
  if (val < ctrl->minimum || val > ctrl->maximum)
   return -ERANGE;
  if (ctrl->qmenu[val][0] == '\0' ||
      (ctrl->menu_skip_mask & (1 << val)))
   return -EINVAL;
  return 0;

 case 133:
 case 132:
  ctrl->val64 = 0;
  return 0;

 case 130:
  return 0;

 case 128:
  len = strlen(s);
  if (len < ctrl->minimum)
   return -ERANGE;
  if ((len - ctrl->minimum) % ctrl->step)
   return -ERANGE;
  return 0;

 default:
  return -EINVAL;
 }
}
