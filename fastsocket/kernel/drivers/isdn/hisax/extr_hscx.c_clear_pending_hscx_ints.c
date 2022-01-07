
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct IsdnCardState {int (* BC_Read_Reg ) (struct IsdnCardState*,int,int ) ;int (* BC_Write_Reg ) (struct IsdnCardState*,int,int ,int) ;} ;


 int HSCX_EXIR ;
 int HSCX_ISTA ;
 int HSCX_MASK ;
 int HSCX_STAR ;
 int debugl1 (struct IsdnCardState*,char*,int) ;
 int stub1 (struct IsdnCardState*,int,int ) ;
 int stub2 (struct IsdnCardState*,int,int ) ;
 int stub3 (struct IsdnCardState*,int,int ) ;
 int stub4 (struct IsdnCardState*,int,int ) ;
 int stub5 (struct IsdnCardState*,int,int ) ;
 int stub6 (struct IsdnCardState*,int,int ) ;
 int stub7 (struct IsdnCardState*,int,int ,int) ;
 int stub8 (struct IsdnCardState*,int,int ,int) ;

void
clear_pending_hscx_ints(struct IsdnCardState *cs)
{
 int val, eval;

 val = cs->BC_Read_Reg(cs, 1, HSCX_ISTA);
 debugl1(cs, "HSCX B ISTA %x", val);
 if (val & 0x01) {
  eval = cs->BC_Read_Reg(cs, 1, HSCX_EXIR);
  debugl1(cs, "HSCX B EXIR %x", eval);
 }
 if (val & 0x02) {
  eval = cs->BC_Read_Reg(cs, 0, HSCX_EXIR);
  debugl1(cs, "HSCX A EXIR %x", eval);
 }
 val = cs->BC_Read_Reg(cs, 0, HSCX_ISTA);
 debugl1(cs, "HSCX A ISTA %x", val);
 val = cs->BC_Read_Reg(cs, 1, HSCX_STAR);
 debugl1(cs, "HSCX B STAR %x", val);
 val = cs->BC_Read_Reg(cs, 0, HSCX_STAR);
 debugl1(cs, "HSCX A STAR %x", val);

 cs->BC_Write_Reg(cs, 0, HSCX_MASK, 0xFF);
 cs->BC_Write_Reg(cs, 1, HSCX_MASK, 0xFF);
}
