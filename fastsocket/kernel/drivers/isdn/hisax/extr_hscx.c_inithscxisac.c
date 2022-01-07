
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct IsdnCardState {int (* writeisac ) (struct IsdnCardState*,int ,int) ;int (* BC_Write_Reg ) (struct IsdnCardState*,int,int ,int ) ;} ;


 int HSCX_MASK ;
 int ISAC_CMDR ;
 int ISAC_MASK ;
 int clear_pending_hscx_ints (struct IsdnCardState*) ;
 int clear_pending_isac_ints (struct IsdnCardState*) ;
 int inithscx (struct IsdnCardState*) ;
 int initisac (struct IsdnCardState*) ;
 int stub1 (struct IsdnCardState*,int ,int) ;
 int stub2 (struct IsdnCardState*,int,int ,int ) ;
 int stub3 (struct IsdnCardState*,int,int ,int ) ;
 int stub4 (struct IsdnCardState*,int ,int) ;

void
inithscxisac(struct IsdnCardState *cs, int part)
{
 if (part & 1) {
  clear_pending_isac_ints(cs);
  clear_pending_hscx_ints(cs);
  initisac(cs);
  inithscx(cs);
 }
 if (part & 2) {

  cs->writeisac(cs, ISAC_MASK, 0);
  cs->BC_Write_Reg(cs, 0, HSCX_MASK, 0);
  cs->BC_Write_Reg(cs, 1, HSCX_MASK, 0);

  cs->writeisac(cs, ISAC_CMDR, 0x41);
 }
}
