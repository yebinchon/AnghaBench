
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct IsdnCardState {TYPE_1__* bcs; int * BC_Send_Data; } ;
struct TYPE_3__ {void* BC_Close; void* BC_SetStack; } ;


 void* close_hfcstate ;
 int hfc_fill_fifo ;
 int init_send (TYPE_1__*) ;
 int mode_hfc (TYPE_1__*,int ,int ) ;
 void* setstack_hfc ;

void
inithfc(struct IsdnCardState *cs)
{
 init_send(&cs->bcs[0]);
 init_send(&cs->bcs[1]);
 cs->BC_Send_Data = &hfc_fill_fifo;
 cs->bcs[0].BC_SetStack = setstack_hfc;
 cs->bcs[1].BC_SetStack = setstack_hfc;
 cs->bcs[0].BC_Close = close_hfcstate;
 cs->bcs[1].BC_Close = close_hfcstate;
 mode_hfc(cs->bcs, 0, 0);
 mode_hfc(cs->bcs + 1, 0, 0);
}
