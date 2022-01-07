
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_3__ {int strState; int strEvent; int event_count; int state_count; } ;


 int ARRAY_SIZE (int ) ;
 int L1SFnList ;
 int L1S_STATE_COUNT ;
 int L1_EVENT_COUNT ;
 int * debug ;
 TYPE_1__ l1fsm_s ;
 int mISDN_FsmNew (TYPE_1__*,int ,int ) ;
 int strL1Event ;
 int strL1SState ;

int
l1_init(u_int *deb)
{
 debug = deb;
 l1fsm_s.state_count = L1S_STATE_COUNT;
 l1fsm_s.event_count = L1_EVENT_COUNT;
 l1fsm_s.strEvent = strL1Event;
 l1fsm_s.strState = strL1SState;
 mISDN_FsmNew(&l1fsm_s, L1SFnList, ARRAY_SIZE(L1SFnList));
 return 0;
}
