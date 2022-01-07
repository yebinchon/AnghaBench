
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ext_controls {unsigned int error_idx; unsigned int count; } ;
struct v4l2_ctrl_handler {int dummy; } ;
struct v4l2_ctrl {int flags; unsigned int ncontrols; scalar_t__ has_new; struct v4l2_ctrl** cluster; } ;
struct ctrl_helper {scalar_t__ handled; struct v4l2_ctrl* ctrl; } ;


 int EACCES ;
 int EBUSY ;
 int V4L2_CTRL_FLAG_GRABBED ;
 int V4L2_CTRL_FLAG_READ_ONLY ;
 int cluster_done (unsigned int,struct v4l2_ext_controls*,struct ctrl_helper*) ;
 int cluster_walk (unsigned int,struct v4l2_ext_controls*,struct ctrl_helper*,int ) ;
 int new_to_user ;
 int try_or_set_control_cluster (struct v4l2_ctrl*,int) ;
 int user_to_new ;
 int v4l2_ctrl_lock (struct v4l2_ctrl*) ;
 int v4l2_ctrl_unlock (struct v4l2_ctrl*) ;

__attribute__((used)) static int try_or_set_ext_ctrls(struct v4l2_ctrl_handler *hdl,
    struct v4l2_ext_controls *cs,
    struct ctrl_helper *helpers,
    bool set)
{
 unsigned i, j;
 int ret = 0;

 cs->error_idx = cs->count;
 for (i = 0; i < cs->count; i++) {
  struct v4l2_ctrl *ctrl = helpers[i].ctrl;

  if (!set)
   cs->error_idx = i;

  if (ctrl->flags & V4L2_CTRL_FLAG_READ_ONLY)
   return -EACCES;






  if (set && (ctrl->flags & V4L2_CTRL_FLAG_GRABBED))
   return -EBUSY;
 }

 for (i = 0; !ret && i < cs->count; i++) {
  struct v4l2_ctrl *ctrl = helpers[i].ctrl;
  struct v4l2_ctrl *master = ctrl->cluster[0];

  cs->error_idx = i;

  if (helpers[i].handled)
   continue;

  v4l2_ctrl_lock(ctrl);


  for (j = 0; j < master->ncontrols; j++)
   if (master->cluster[j])
    master->cluster[j]->has_new = 0;



  ret = cluster_walk(i, cs, helpers, user_to_new);

  if (!ret)
   ret = try_or_set_control_cluster(master, set);


  if (!ret)
   ret = cluster_walk(i, cs, helpers, new_to_user);

  v4l2_ctrl_unlock(ctrl);
  cluster_done(i, cs, helpers);
 }
 return ret;
}
