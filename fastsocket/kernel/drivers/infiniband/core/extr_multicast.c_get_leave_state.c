
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int join_state; } ;
struct mcast_group {TYPE_1__ rec; int * members; } ;



__attribute__((used)) static u8 get_leave_state(struct mcast_group *group)
{
 u8 leave_state = 0;
 int i;

 for (i = 0; i < 3; i++)
  if (!group->members[i])
   leave_state |= (0x1 << i);

 return leave_state & group->rec.join_state;
}
