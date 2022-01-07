
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ext_controls {int count; int * controls; } ;
struct v4l2_ctrl {struct v4l2_ctrl** cluster; } ;
struct ctrl_helper {int handled; struct v4l2_ctrl* ctrl; } ;
typedef int (* cluster_func ) (int *,struct v4l2_ctrl*) ;



__attribute__((used)) static int cluster_walk(unsigned from,
   struct v4l2_ext_controls *cs,
   struct ctrl_helper *helpers,
   cluster_func f)
{
 struct v4l2_ctrl **cluster = helpers[from].ctrl->cluster;
 int ret = 0;
 int i;


 for (i = from; !ret && i < cs->count; i++) {
  struct v4l2_ctrl *ctrl = helpers[i].ctrl;

  if (!helpers[i].handled && ctrl->cluster == cluster)
   ret = f(&cs->controls[i], ctrl);
 }
 return ret;
}
