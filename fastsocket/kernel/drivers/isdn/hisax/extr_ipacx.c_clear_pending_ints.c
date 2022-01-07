
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct IsdnCardState {int (* readisac ) (struct IsdnCardState*,int ) ;int (* BC_Read_Reg ) (struct IsdnCardState*,int,int ) ;int (* BC_Write_Reg ) (struct IsdnCardState*,int,int ,int) ;int (* writeisac ) (struct IsdnCardState*,int ,int) ;} ;


 int IPACX_CIR0 ;
 int IPACX_ISTA ;
 int IPACX_ISTAB ;
 int IPACX_ISTAD ;
 int IPACX_MASK ;
 int IPACX_MASKB ;
 int IPACX_MASKD ;
 int stub1 (struct IsdnCardState*,int ,int) ;
 int stub2 (struct IsdnCardState*,int ,int) ;
 int stub3 (struct IsdnCardState*,int,int ,int) ;
 int stub4 (struct IsdnCardState*,int,int ,int) ;
 int stub5 (struct IsdnCardState*,int ) ;
 int stub6 (struct IsdnCardState*,int,int ) ;
 int stub7 (struct IsdnCardState*,int,int ) ;
 int stub8 (struct IsdnCardState*,int ) ;
 int stub9 (struct IsdnCardState*,int ) ;

__attribute__((used)) static void
clear_pending_ints(struct IsdnCardState *cs)
{
 int ista;


  cs->writeisac(cs, IPACX_MASK, 0xff);
 cs->writeisac(cs, IPACX_MASKD, 0xff);
 cs->BC_Write_Reg(cs, 0, IPACX_MASKB, 0xff);
 cs->BC_Write_Reg(cs, 1, IPACX_MASKB, 0xff);

  ista = cs->readisac(cs, IPACX_ISTA);
  if (ista &0x80) cs->BC_Read_Reg(cs, 0, IPACX_ISTAB);
  if (ista &0x40) cs->BC_Read_Reg(cs, 1, IPACX_ISTAB);
  if (ista &0x10) cs->readisac(cs, IPACX_CIR0);
  if (ista &0x01) cs->readisac(cs, IPACX_ISTAD);
}
