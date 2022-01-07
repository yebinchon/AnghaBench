
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_prio_state {int dummy; } ;
typedef enum v4l2_priority { ____Placeholder_v4l2_priority } v4l2_priority ;


 int V4L2_PRIORITY_DEFAULT ;
 int v4l2_prio_change (struct v4l2_prio_state*,int*,int ) ;

void v4l2_prio_open(struct v4l2_prio_state *global, enum v4l2_priority *local)
{
 v4l2_prio_change(global, local, V4L2_PRIORITY_DEFAULT);
}
