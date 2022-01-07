
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {void* send; } ;
struct TYPE_7__ {TYPE_1__ hfcD; } ;
struct IsdnCardState {TYPE_5__* bcs; int * BC_Send_Data; TYPE_2__ hw; int setstack_d; } ;
struct TYPE_8__ {void* send; } ;
struct TYPE_9__ {TYPE_3__ hfc; } ;
struct TYPE_10__ {void* BC_Close; void* BC_SetStack; TYPE_4__ hw; } ;


 void* close_2bs0 ;
 int hfc_send_data ;
 void* init_send_hfcd (int) ;
 int mode_2bs0 (TYPE_5__*,int ,int) ;
 void* setstack_2b ;
 int setstack_hfcd ;

void
init2bds0(struct IsdnCardState *cs)
{
 cs->setstack_d = setstack_hfcd;
 if (!cs->hw.hfcD.send)
  cs->hw.hfcD.send = init_send_hfcd(16);
 if (!cs->bcs[0].hw.hfc.send)
  cs->bcs[0].hw.hfc.send = init_send_hfcd(32);
 if (!cs->bcs[1].hw.hfc.send)
  cs->bcs[1].hw.hfc.send = init_send_hfcd(32);
 cs->BC_Send_Data = &hfc_send_data;
 cs->bcs[0].BC_SetStack = setstack_2b;
 cs->bcs[1].BC_SetStack = setstack_2b;
 cs->bcs[0].BC_Close = close_2bs0;
 cs->bcs[1].BC_Close = close_2bs0;
 mode_2bs0(cs->bcs, 0, 0);
 mode_2bs0(cs->bcs + 1, 0, 1);
}
