
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_ext_controls {int count; } ;
struct v4l2_ctrl {int dummy; } ;
struct ctrl_helper {int handled; TYPE_1__* ctrl; } ;
struct TYPE_2__ {struct v4l2_ctrl** cluster; } ;



__attribute__((used)) static void cluster_done(unsigned from,
    struct v4l2_ext_controls *cs,
    struct ctrl_helper *helpers)
{
 struct v4l2_ctrl **cluster = helpers[from].ctrl->cluster;
 int i;


 for (i = from; i < cs->count; i++)
  if (helpers[i].ctrl->cluster == cluster)
   helpers[i].handled = 1;
}
