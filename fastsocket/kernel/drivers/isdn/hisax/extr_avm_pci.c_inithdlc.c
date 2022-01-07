
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct IsdnCardState {TYPE_1__* bcs; } ;
struct TYPE_2__ {void* BC_Close; void* BC_SetStack; } ;


 void* close_hdlcstate ;
 int modehdlc (TYPE_1__*,int,int) ;
 void* setstack_hdlc ;

__attribute__((used)) static void
inithdlc(struct IsdnCardState *cs)
{
 cs->bcs[0].BC_SetStack = setstack_hdlc;
 cs->bcs[1].BC_SetStack = setstack_hdlc;
 cs->bcs[0].BC_Close = close_hdlcstate;
 cs->bcs[1].BC_Close = close_hdlcstate;
 modehdlc(cs->bcs, -1, 0);
 modehdlc(cs->bcs + 1, -1, 1);
}
