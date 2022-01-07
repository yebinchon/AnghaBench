
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct IsdnCardState {int (* BC_Write_Reg ) (struct IsdnCardState*,int,int ,int) ;int (* writeisac ) (struct IsdnCardState*,int ,int) ;} ;


 int IPACX_CMDRB ;
 int IPACX_CMDRD ;
 int IPACX_CMD_RES ;
 int IPACX_MASK ;
 int IPACX_MASKB ;
 int IPACX_MASKD ;
 int _MASKB_IMASK ;
 int _MASKD_IMASK ;
 int _MASK_IMASK ;
 int bch_init (struct IsdnCardState*,int) ;
 int clear_pending_ints (struct IsdnCardState*) ;
 int dch_init (struct IsdnCardState*) ;
 int ph_command (struct IsdnCardState*,int ) ;
 int stub1 (struct IsdnCardState*,int,int ,int) ;
 int stub2 (struct IsdnCardState*,int,int ,int) ;
 int stub3 (struct IsdnCardState*,int ,int) ;
 int stub4 (struct IsdnCardState*,int ,int) ;
 int stub5 (struct IsdnCardState*,int ,int) ;
 int stub6 (struct IsdnCardState*,int,int ,int) ;
 int stub7 (struct IsdnCardState*,int,int ,int) ;

void
init_ipacx(struct IsdnCardState *cs, int part)
{
 if (part &1) {



  clear_pending_ints(cs);
  bch_init(cs, 0);
  bch_init(cs, 1);
  dch_init(cs);
 }
 if (part &2) {
  cs->BC_Write_Reg(cs, 0, IPACX_MASKB, _MASKB_IMASK);
  cs->BC_Write_Reg(cs, 1, IPACX_MASKB, _MASKB_IMASK);
  cs->writeisac(cs, IPACX_MASKD, _MASKD_IMASK);
  cs->writeisac(cs, IPACX_MASK, _MASK_IMASK);


  cs->writeisac(cs, IPACX_CMDRD, 0x41);
  cs->BC_Write_Reg(cs, 0, IPACX_CMDRB, 0x41);
  cs->BC_Write_Reg(cs, 1, IPACX_CMDRB, 0x41);
  ph_command(cs, IPACX_CMD_RES);
 }
}
