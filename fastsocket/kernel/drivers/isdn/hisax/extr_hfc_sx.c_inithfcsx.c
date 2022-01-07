
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct IsdnCardState {TYPE_1__* bcs; int * BC_Send_Data; int setstack_d; } ;
struct TYPE_2__ {void* BC_Close; void* BC_SetStack; } ;


 void* close_hfcsx ;
 int hfcsx_send_data ;
 int mode_hfcsx (TYPE_1__*,int ,int) ;
 void* setstack_2b ;
 int setstack_hfcsx ;

__attribute__((used)) static void inithfcsx(struct IsdnCardState *cs)
{
 cs->setstack_d = setstack_hfcsx;
 cs->BC_Send_Data = &hfcsx_send_data;
 cs->bcs[0].BC_SetStack = setstack_2b;
 cs->bcs[1].BC_SetStack = setstack_2b;
 cs->bcs[0].BC_Close = close_hfcsx;
 cs->bcs[1].BC_Close = close_hfcsx;
 mode_hfcsx(cs->bcs, 0, 0);
 mode_hfcsx(cs->bcs + 1, 0, 1);
}
