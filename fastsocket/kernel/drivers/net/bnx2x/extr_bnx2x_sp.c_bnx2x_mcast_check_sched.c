
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pstate; } ;
struct bnx2x_mcast_obj {TYPE_1__ raw; int sched_state; } ;


 int test_bit (int ,int ) ;

__attribute__((used)) static bool bnx2x_mcast_check_sched(struct bnx2x_mcast_obj *o)
{
 return !!test_bit(o->sched_state, o->raw.pstate);
}
