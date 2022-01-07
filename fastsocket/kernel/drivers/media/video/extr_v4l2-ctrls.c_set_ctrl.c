
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int val; } ;
struct v4l2_ctrl {int flags; int ncontrols; int has_new; TYPE_1__ cur; int val; struct v4l2_ctrl** cluster; } ;
typedef int s32 ;


 int EACCES ;
 int V4L2_CTRL_FLAG_READ_ONLY ;
 int try_or_set_control_cluster (struct v4l2_ctrl*,int) ;
 int v4l2_ctrl_lock (struct v4l2_ctrl*) ;
 int v4l2_ctrl_unlock (struct v4l2_ctrl*) ;

__attribute__((used)) static int set_ctrl(struct v4l2_ctrl *ctrl, s32 *val)
{
 struct v4l2_ctrl *master = ctrl->cluster[0];
 int ret;
 int i;

 if (ctrl->flags & V4L2_CTRL_FLAG_READ_ONLY)
  return -EACCES;

 v4l2_ctrl_lock(ctrl);


 for (i = 0; i < master->ncontrols; i++)
  if (master->cluster[i])
   master->cluster[i]->has_new = 0;

 ctrl->val = *val;
 ctrl->has_new = 1;
 ret = try_or_set_control_cluster(master, 0);
 if (!ret)
  ret = try_or_set_control_cluster(master, 1);
 *val = ctrl->cur.val;
 v4l2_ctrl_unlock(ctrl);
 return ret;
}
