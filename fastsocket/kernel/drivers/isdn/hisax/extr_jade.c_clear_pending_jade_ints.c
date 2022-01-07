
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct IsdnCardState {int (* BC_Read_Reg ) (struct IsdnCardState*,int,int ) ;int (* BC_Write_Reg ) (struct IsdnCardState*,int,int ,int) ;} ;


 int debugl1 (struct IsdnCardState*,char*) ;
 int jade_HDLC_IMR ;
 int jade_HDLC_ISR ;
 int jade_HDLC_STAR ;
 int sprintf (char*,char*,int) ;
 int stub1 (struct IsdnCardState*,int,int ,int) ;
 int stub2 (struct IsdnCardState*,int,int ,int) ;
 int stub3 (struct IsdnCardState*,int,int ) ;
 int stub4 (struct IsdnCardState*,int,int ) ;
 int stub5 (struct IsdnCardState*,int,int ) ;
 int stub6 (struct IsdnCardState*,int,int ) ;
 int stub7 (struct IsdnCardState*,int,int ,int) ;
 int stub8 (struct IsdnCardState*,int,int ,int) ;

void
clear_pending_jade_ints(struct IsdnCardState *cs)
{
 int val;
 char tmp[64];

 cs->BC_Write_Reg(cs, 0, jade_HDLC_IMR, 0x00);
 cs->BC_Write_Reg(cs, 1, jade_HDLC_IMR, 0x00);

 val = cs->BC_Read_Reg(cs, 1, jade_HDLC_ISR);
 sprintf(tmp, "jade B ISTA %x", val);
 debugl1(cs, tmp);
 val = cs->BC_Read_Reg(cs, 0, jade_HDLC_ISR);
 sprintf(tmp, "jade A ISTA %x", val);
 debugl1(cs, tmp);
 val = cs->BC_Read_Reg(cs, 1, jade_HDLC_STAR);
 sprintf(tmp, "jade B STAR %x", val);
 debugl1(cs, tmp);
 val = cs->BC_Read_Reg(cs, 0, jade_HDLC_STAR);
 sprintf(tmp, "jade A STAR %x", val);
 debugl1(cs, tmp);

 cs->BC_Write_Reg(cs, 0, jade_HDLC_IMR, 0xF8);
 cs->BC_Write_Reg(cs, 1, jade_HDLC_IMR, 0xF8);
}
