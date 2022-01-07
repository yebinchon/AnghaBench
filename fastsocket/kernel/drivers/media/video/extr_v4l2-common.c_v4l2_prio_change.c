
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_prio_state {int * prios; } ;
typedef enum v4l2_priority { ____Placeholder_v4l2_priority } v4l2_priority ;


 int EINVAL ;
 scalar_t__ V4L2_PRIO_VALID (int) ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;

int v4l2_prio_change(struct v4l2_prio_state *global, enum v4l2_priority *local,
       enum v4l2_priority new)
{
 if (!V4L2_PRIO_VALID(new))
  return -EINVAL;
 if (*local == new)
  return 0;

 atomic_inc(&global->prios[new]);
 if (V4L2_PRIO_VALID(*local))
  atomic_dec(&global->prios[*local]);
 *local = new;
 return 0;
}
