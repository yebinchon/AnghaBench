
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct IsdnCardState {TYPE_3__* bcs; int (* BC_Write_Reg ) (struct IsdnCardState*,int,int ,int) ;} ;
struct TYPE_4__ {int hscx; } ;
struct TYPE_5__ {TYPE_1__ hscx; } ;
struct TYPE_6__ {TYPE_2__ hw; void* BC_Close; void* BC_SetStack; } ;


 void* close_jadestate ;
 int jadeINDIRECT_HAH1 ;
 int jadeINDIRECT_HAH2 ;
 int jadeINT_HDLC1 ;
 int jadeINT_HDLC2 ;
 int jadeMODE_TMO ;
 int jade_HDLCCNTRACCESS ;
 int jade_HDLC_CCR0 ;
 int jade_HDLC_IMR ;
 int jade_HDLC_MODE ;
 int jade_INT ;
 int jade_write_indirect (struct IsdnCardState*,int,int) ;
 int modejade (TYPE_3__*,int ,int ) ;
 void* setstack_jade ;
 int stub1 (struct IsdnCardState*,int,int ,int) ;
 int stub2 (struct IsdnCardState*,int,int ,int) ;
 int stub3 (struct IsdnCardState*,int,int ,int) ;
 int stub4 (struct IsdnCardState*,int,int ,int) ;
 int stub5 (struct IsdnCardState*,int,int ,int) ;
 int stub6 (struct IsdnCardState*,int,int ,int) ;
 int stub7 (struct IsdnCardState*,int,int ,int) ;

void
initjade(struct IsdnCardState *cs)
{
 cs->bcs[0].BC_SetStack = setstack_jade;
 cs->bcs[1].BC_SetStack = setstack_jade;
 cs->bcs[0].BC_Close = close_jadestate;
 cs->bcs[1].BC_Close = close_jadestate;
 cs->bcs[0].hw.hscx.hscx = 0;
 cs->bcs[1].hw.hscx.hscx = 1;


 jade_write_indirect(cs, 0x11, 0x0f);
 jade_write_indirect(cs, 0x17, 0x2f);


 cs->BC_Write_Reg(cs, 0, jade_HDLC_MODE, jadeMODE_TMO);
 cs->BC_Write_Reg(cs, 1, jade_HDLC_MODE, jadeMODE_TMO);

 cs->BC_Write_Reg(cs, 0, jade_HDLC_CCR0, 0x00);
 cs->BC_Write_Reg(cs, 1, jade_HDLC_CCR0, 0x00);

 cs->BC_Write_Reg(cs, 0, jade_HDLC_IMR, 0x00);
 cs->BC_Write_Reg(cs, 1, jade_HDLC_IMR, 0x00);

 jade_write_indirect(cs, jade_HDLCCNTRACCESS, (jadeINDIRECT_HAH1|jadeINDIRECT_HAH2));

 cs->BC_Write_Reg(cs, -1,jade_INT, (jadeINT_HDLC1|jadeINT_HDLC2));


 modejade(cs->bcs, 0, 0);
 modejade(cs->bcs + 1, 0, 0);
}
