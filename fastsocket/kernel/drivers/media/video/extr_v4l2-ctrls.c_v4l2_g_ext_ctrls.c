
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_ext_controls {int error_idx; int count; int ctrl_class; } ;
struct v4l2_ctrl_handler {int dummy; } ;
struct v4l2_ctrl {int flags; TYPE_1__* ops; scalar_t__ is_volatile; struct v4l2_ctrl** cluster; } ;
struct ctrl_helper {scalar_t__ handled; struct v4l2_ctrl* ctrl; } ;
typedef int helper ;
struct TYPE_2__ {int (* g_volatile_ctrl ) (struct v4l2_ctrl*) ;} ;


 int ARRAY_SIZE (struct ctrl_helper*) ;
 int EACCES ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int V4L2_CTRL_FLAG_WRITE_ONLY ;
 int V4L2_CTRL_ID2CLASS (int ) ;
 int class_check (struct v4l2_ctrl_handler*,int ) ;
 int cluster_done (int,struct v4l2_ext_controls*,struct ctrl_helper*) ;
 int cluster_walk (int,struct v4l2_ext_controls*,struct ctrl_helper*,int ) ;
 int cur_to_user ;
 int kfree (struct ctrl_helper*) ;
 struct ctrl_helper* kmalloc (int,int ) ;
 int prepare_ext_ctrls (struct v4l2_ctrl_handler*,struct v4l2_ext_controls*,struct ctrl_helper*,int) ;
 int stub1 (struct v4l2_ctrl*) ;
 int v4l2_ctrl_lock (struct v4l2_ctrl*) ;
 int v4l2_ctrl_unlock (struct v4l2_ctrl*) ;

int v4l2_g_ext_ctrls(struct v4l2_ctrl_handler *hdl, struct v4l2_ext_controls *cs)
{
 struct ctrl_helper helper[4];
 struct ctrl_helper *helpers = helper;
 int ret;
 int i;

 cs->error_idx = cs->count;
 cs->ctrl_class = V4L2_CTRL_ID2CLASS(cs->ctrl_class);

 if (hdl == ((void*)0))
  return -EINVAL;

 if (cs->count == 0)
  return class_check(hdl, cs->ctrl_class);

 if (cs->count > ARRAY_SIZE(helper)) {
  helpers = kmalloc(sizeof(helper[0]) * cs->count, GFP_KERNEL);
  if (helpers == ((void*)0))
   return -ENOMEM;
 }

 ret = prepare_ext_ctrls(hdl, cs, helpers, 0);

 for (i = 0; !ret && i < cs->count; i++)
  if (helpers[i].ctrl->flags & V4L2_CTRL_FLAG_WRITE_ONLY)
   ret = -EACCES;

 for (i = 0; !ret && i < cs->count; i++) {
  struct v4l2_ctrl *ctrl = helpers[i].ctrl;
  struct v4l2_ctrl *master = ctrl->cluster[0];

  if (helpers[i].handled)
   continue;

  cs->error_idx = i;

  v4l2_ctrl_lock(master);

  if (ctrl->is_volatile && master->ops->g_volatile_ctrl)
   ret = master->ops->g_volatile_ctrl(master);

  if (!ret)
   ret = cluster_walk(i, cs, helpers, cur_to_user);
  v4l2_ctrl_unlock(master);
  cluster_done(i, cs, helpers);
 }

 if (cs->count > ARRAY_SIZE(helper))
  kfree(helpers);
 return ret;
}
