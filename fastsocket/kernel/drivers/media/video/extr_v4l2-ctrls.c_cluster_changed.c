
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int val; int val64; int string; } ;
struct v4l2_ctrl {int ncontrols; int type; TYPE_1__ cur; int val; int val64; int string; struct v4l2_ctrl** cluster; } ;





 int strcmp (int ,int ) ;

__attribute__((used)) static int cluster_changed(struct v4l2_ctrl *master)
{
 int diff = 0;
 int i;

 for (i = 0; !diff && i < master->ncontrols; i++) {
  struct v4l2_ctrl *ctrl = master->cluster[i];

  if (ctrl == ((void*)0))
   continue;
  switch (ctrl->type) {
  case 130:

   return 1;
  case 128:

   diff = strcmp(ctrl->string, ctrl->cur.string);
   break;
  case 129:
   diff = ctrl->val64 != ctrl->cur.val64;
   break;
  default:
   diff = ctrl->val != ctrl->cur.val;
   break;
  }
 }
 return diff;
}
