
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int val; } ;
struct v4l2_ctrl {int flags; TYPE_1__ cur; TYPE_2__* ops; scalar_t__ is_volatile; struct v4l2_ctrl** cluster; } ;
typedef int s32 ;
struct TYPE_4__ {int (* g_volatile_ctrl ) (struct v4l2_ctrl*) ;} ;


 int EACCES ;
 int V4L2_CTRL_FLAG_WRITE_ONLY ;
 int stub1 (struct v4l2_ctrl*) ;
 int v4l2_ctrl_lock (struct v4l2_ctrl*) ;
 int v4l2_ctrl_unlock (struct v4l2_ctrl*) ;

__attribute__((used)) static int get_ctrl(struct v4l2_ctrl *ctrl, s32 *val)
{
 struct v4l2_ctrl *master = ctrl->cluster[0];
 int ret = 0;

 if (ctrl->flags & V4L2_CTRL_FLAG_WRITE_ONLY)
  return -EACCES;

 v4l2_ctrl_lock(master);

 if (ctrl->is_volatile && master->ops->g_volatile_ctrl)
  ret = master->ops->g_volatile_ctrl(master);
 *val = ctrl->cur.val;
 v4l2_ctrl_unlock(master);
 return ret;
}
