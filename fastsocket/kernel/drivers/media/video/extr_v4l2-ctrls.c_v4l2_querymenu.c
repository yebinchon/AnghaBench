
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_querymenu {int index; int name; scalar_t__ reserved; int id; } ;
struct v4l2_ctrl_handler {int dummy; } ;
struct v4l2_ctrl {char** qmenu; int minimum; int maximum; int menu_skip_mask; } ;


 int EINVAL ;
 int strlcpy (int ,char*,int) ;
 struct v4l2_ctrl* v4l2_ctrl_find (struct v4l2_ctrl_handler*,int ) ;

int v4l2_querymenu(struct v4l2_ctrl_handler *hdl, struct v4l2_querymenu *qm)
{
 struct v4l2_ctrl *ctrl;
 u32 i = qm->index;

 ctrl = v4l2_ctrl_find(hdl, qm->id);
 if (!ctrl)
  return -EINVAL;

 qm->reserved = 0;

 if (ctrl->qmenu == ((void*)0) ||
     i < ctrl->minimum || i > ctrl->maximum)
  return -EINVAL;

 if (ctrl->menu_skip_mask & (1 << i))
  return -EINVAL;

 if (ctrl->qmenu[i] == ((void*)0) || ctrl->qmenu[i][0] == '\0')
  return -EINVAL;
 strlcpy(qm->name, ctrl->qmenu[i], sizeof(qm->name));
 return 0;
}
