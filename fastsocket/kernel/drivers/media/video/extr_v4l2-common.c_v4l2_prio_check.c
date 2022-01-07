
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_prio_state {int dummy; } ;
typedef enum v4l2_priority { ____Placeholder_v4l2_priority } v4l2_priority ;


 int EBUSY ;
 int v4l2_prio_max (struct v4l2_prio_state*) ;

int v4l2_prio_check(struct v4l2_prio_state *global, enum v4l2_priority local)
{
 return (local < v4l2_prio_max(global)) ? -EBUSY : 0;
}
