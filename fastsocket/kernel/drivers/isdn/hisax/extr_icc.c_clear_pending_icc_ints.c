
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ph_state; } ;
struct TYPE_4__ {TYPE_1__ icc; } ;
struct IsdnCardState {int (* readisac ) (struct IsdnCardState*,int ) ;int (* writeisac ) (struct IsdnCardState*,int ,int) ;TYPE_2__ dc; } ;


 int D_L1STATECHANGE ;
 int ICC_ADF2 ;
 int ICC_CIR0 ;
 int ICC_EXIR ;
 int ICC_ISTA ;
 int ICC_MASK ;
 int ICC_MODE ;
 int ICC_STAR ;
 int debugl1 (struct IsdnCardState*,char*,int) ;
 int schedule_event (struct IsdnCardState*,int ) ;
 int stub1 (struct IsdnCardState*,int ) ;
 int stub2 (struct IsdnCardState*,int ) ;
 int stub3 (struct IsdnCardState*,int ) ;
 int stub4 (struct IsdnCardState*,int ) ;
 int stub5 (struct IsdnCardState*,int ) ;
 int stub6 (struct IsdnCardState*,int ) ;
 int stub7 (struct IsdnCardState*,int ,int) ;

void
clear_pending_icc_ints(struct IsdnCardState *cs)
{
 int val, eval;

 val = cs->readisac(cs, ICC_STAR);
 debugl1(cs, "ICC STAR %x", val);
 val = cs->readisac(cs, ICC_MODE);
 debugl1(cs, "ICC MODE %x", val);
 val = cs->readisac(cs, ICC_ADF2);
 debugl1(cs, "ICC ADF2 %x", val);
 val = cs->readisac(cs, ICC_ISTA);
 debugl1(cs, "ICC ISTA %x", val);
 if (val & 0x01) {
  eval = cs->readisac(cs, ICC_EXIR);
  debugl1(cs, "ICC EXIR %x", eval);
 }
 val = cs->readisac(cs, ICC_CIR0);
 debugl1(cs, "ICC CIR0 %x", val);
 cs->dc.icc.ph_state = (val >> 2) & 0xf;
 schedule_event(cs, D_L1STATECHANGE);

 cs->writeisac(cs, ICC_MASK, 0xFF);
}
