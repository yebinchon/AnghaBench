
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mcast_group {TYPE_1__* func; } ;
struct TYPE_2__ {scalar_t__ state; int join_state; } ;


 int MAD_STATUS_REQ_INVALID ;
 scalar_t__ MCAST_MEMBER ;

__attribute__((used)) static int check_leave(struct mcast_group *group, int slave, u8 leave_mask)
{
 if (group->func[slave].state != MCAST_MEMBER)
  return MAD_STATUS_REQ_INVALID;


 if (~group->func[slave].join_state & leave_mask)
  return MAD_STATUS_REQ_INVALID;

 if (!leave_mask)
  return MAD_STATUS_REQ_INVALID;

 return 0;
}
