
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l3_process {int debug; int callref; int state; int st; } ;


 int L3_DEB_STATE ;
 int l3_debug (int ,char*,int,int,int) ;

void
newl3state(struct l3_process *pc, int state)
{
 if (pc->debug & L3_DEB_STATE)
  l3_debug(pc->st, "newstate cr %d %d --> %d",
    pc->callref & 0x7F,
    pc->state, state);
 pc->state = state;
}
