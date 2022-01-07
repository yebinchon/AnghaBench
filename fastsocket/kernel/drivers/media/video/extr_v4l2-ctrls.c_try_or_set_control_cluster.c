
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_ctrl {int ncontrols; int flags; struct v4l2_ctrl** cluster; TYPE_1__* ops; scalar_t__ has_new; } ;
struct TYPE_2__ {int (* try_ctrl ) (struct v4l2_ctrl*) ;int (* s_ctrl ) (struct v4l2_ctrl*) ;} ;


 int EBUSY ;
 int V4L2_CTRL_FLAG_GRABBED ;
 scalar_t__ cluster_changed (struct v4l2_ctrl*) ;
 int cur_to_new (struct v4l2_ctrl*) ;
 int new_to_cur (struct v4l2_ctrl*) ;
 int stub1 (struct v4l2_ctrl*) ;
 int stub2 (struct v4l2_ctrl*) ;
 int validate_new (struct v4l2_ctrl*) ;

__attribute__((used)) static int try_or_set_control_cluster(struct v4l2_ctrl *master, bool set)
{
 bool try = !set;
 int ret = 0;
 int i;





 for (i = 0; !ret && i < master->ncontrols; i++) {
  struct v4l2_ctrl *ctrl = master->cluster[i];

  if (ctrl == ((void*)0))
   continue;

  if (ctrl->has_new) {


   if (set && (ctrl->flags & V4L2_CTRL_FLAG_GRABBED))
    return -EBUSY;


   if (!set)
    ret = validate_new(ctrl);
   continue;
  }



  try = 1;
  cur_to_new(ctrl);
 }




 if (!ret && master->ops->try_ctrl && try)
  ret = master->ops->try_ctrl(master);


 if (!ret && set && cluster_changed(master)) {
  ret = master->ops->s_ctrl(master);

  if (!ret)
   for (i = 0; i < master->ncontrols; i++)
    new_to_cur(master->cluster[i]);
 }
 return ret;
}
