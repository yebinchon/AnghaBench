
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_prio_state {int * prios; } ;
typedef enum v4l2_priority { ____Placeholder_v4l2_priority } v4l2_priority ;


 size_t V4L2_PRIORITY_BACKGROUND ;
 size_t V4L2_PRIORITY_INTERACTIVE ;
 size_t V4L2_PRIORITY_RECORD ;
 int V4L2_PRIORITY_UNSET ;
 scalar_t__ atomic_read (int *) ;

enum v4l2_priority v4l2_prio_max(struct v4l2_prio_state *global)
{
 if (atomic_read(&global->prios[V4L2_PRIORITY_RECORD]) > 0)
  return V4L2_PRIORITY_RECORD;
 if (atomic_read(&global->prios[V4L2_PRIORITY_INTERACTIVE]) > 0)
  return V4L2_PRIORITY_INTERACTIVE;
 if (atomic_read(&global->prios[V4L2_PRIORITY_BACKGROUND]) > 0)
  return V4L2_PRIORITY_BACKGROUND;
 return V4L2_PRIORITY_UNSET;
}
