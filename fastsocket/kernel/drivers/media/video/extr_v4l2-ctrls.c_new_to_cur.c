
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int val; int val64; int string; } ;
struct v4l2_ctrl {int type; int val; TYPE_1__ cur; int val64; int string; } ;




 int strcpy (int ,int ) ;

__attribute__((used)) static void new_to_cur(struct v4l2_ctrl *ctrl)
{
 if (ctrl == ((void*)0))
  return;
 switch (ctrl->type) {
 case 128:

  strcpy(ctrl->cur.string, ctrl->string);
  break;
 case 129:
  ctrl->cur.val64 = ctrl->val64;
  break;
 default:
  ctrl->cur.val = ctrl->val;
  break;
 }
}
