
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mocr; int adf2; int * mon_rx; int * mon_tx; } ;
struct TYPE_4__ {TYPE_1__ icc; } ;
struct IsdnCardState {int (* writeisac ) (struct IsdnCardState*,int ,int) ;TYPE_2__ dc; int HW_Flags; int DC_Close; int setstack_d; } ;


 int DC_Close_icc ;
 int HW_IOM1 ;
 int ICC_ADF1 ;
 int ICC_ADF2 ;
 int ICC_CMD_DI ;
 int ICC_CMD_RES ;
 int ICC_MASK ;
 int ICC_MODE ;
 int ICC_SPCR ;
 int ICC_SQXR ;
 int ICC_STCR ;
 int ICC_TIMR ;
 int ph_command (struct IsdnCardState*,int ) ;
 int setstack_icc ;
 int stub1 (struct IsdnCardState*,int ,int) ;
 int stub10 (struct IsdnCardState*,int ,int) ;
 int stub11 (struct IsdnCardState*,int ,int) ;
 int stub12 (struct IsdnCardState*,int ,int) ;
 int stub13 (struct IsdnCardState*,int ,int) ;
 int stub14 (struct IsdnCardState*,int ,int) ;
 int stub2 (struct IsdnCardState*,int ,int) ;
 int stub3 (struct IsdnCardState*,int ,int) ;
 int stub4 (struct IsdnCardState*,int ,int) ;
 int stub5 (struct IsdnCardState*,int ,int) ;
 int stub6 (struct IsdnCardState*,int ,int) ;
 int stub7 (struct IsdnCardState*,int ,int) ;
 int stub8 (struct IsdnCardState*,int ,int) ;
 int stub9 (struct IsdnCardState*,int ,int) ;
 scalar_t__ test_bit (int ,int *) ;

void
initicc(struct IsdnCardState *cs)
{
 cs->setstack_d = setstack_icc;
 cs->DC_Close = DC_Close_icc;
 cs->dc.icc.mon_tx = ((void*)0);
 cs->dc.icc.mon_rx = ((void*)0);
   cs->writeisac(cs, ICC_MASK, 0xff);
   cs->dc.icc.mocr = 0xaa;
 if (test_bit(HW_IOM1, &cs->HW_Flags)) {

  cs->writeisac(cs, ICC_ADF2, 0x0);
  cs->writeisac(cs, ICC_SPCR, 0xa);
  cs->writeisac(cs, ICC_ADF1, 0x2);
  cs->writeisac(cs, ICC_STCR, 0x70);
  cs->writeisac(cs, ICC_MODE, 0xc9);
 } else {

  if (!cs->dc.icc.adf2)
   cs->dc.icc.adf2 = 0x80;
  cs->writeisac(cs, ICC_ADF2, cs->dc.icc.adf2);
  cs->writeisac(cs, ICC_SQXR, 0xa0);
  cs->writeisac(cs, ICC_SPCR, 0x20);
  cs->writeisac(cs, ICC_STCR, 0x70);
  cs->writeisac(cs, ICC_MODE, 0xca);
  cs->writeisac(cs, ICC_TIMR, 0x00);
  cs->writeisac(cs, ICC_ADF1, 0x20);
 }
 ph_command(cs, ICC_CMD_RES);
 cs->writeisac(cs, ICC_MASK, 0x0);
 ph_command(cs, ICC_CMD_DI);
}
