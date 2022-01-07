
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_prio_state {int * prios; } ;
typedef enum v4l2_priority { ____Placeholder_v4l2_priority } v4l2_priority ;


 scalar_t__ V4L2_PRIO_VALID (int) ;
 int atomic_dec (int *) ;

void v4l2_prio_close(struct v4l2_prio_state *global, enum v4l2_priority local)
{
 if (V4L2_PRIO_VALID(local))
  atomic_dec(&global->prios[local]);
}
