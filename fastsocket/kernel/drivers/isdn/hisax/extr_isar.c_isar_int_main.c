
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct isar_reg {int iis; int cmsb; int bstat; int clsb; scalar_t__ par; } ;
struct IsdnCardState {int debug; int (* BC_Write_Reg ) (struct IsdnCardState*,int,int ,int ) ;TYPE_3__* bcs; } ;
struct BCState {int mode; int err_rdo; int err_tx; } ;
struct TYPE_4__ {struct isar_reg* reg; } ;
struct TYPE_5__ {TYPE_1__ isar; } ;
struct TYPE_6__ {TYPE_2__ hw; } ;


 int BSTEV_RBO ;
 int BSTEV_TBO ;
 int ISAR_IIA ;






 int ISAR_IIS_MSCMSD ;



 int L1_DEB_HSCX ;
 int L1_DEB_HSCX_FIFO ;
 int L1_DEB_WARN ;
 int L1_MODE_FAX ;
 int L1_MODE_V32 ;
 int PSEV_10MS_TIMER ;
 int QuickHex (int *,int *,int ) ;
 int check_send (struct IsdnCardState*,int) ;
 int * debbuf ;
 int debugl1 (struct IsdnCardState*,char*,...) ;
 int get_irq_infos (struct IsdnCardState*,struct isar_reg*) ;
 int isar_pump_statev_fax (struct BCState*,int) ;
 int isar_pump_statev_modem (struct BCState*,int) ;
 int isar_pump_status_rsp (struct BCState*,struct isar_reg*) ;
 int isar_rcv_frame (struct IsdnCardState*,struct BCState*) ;
 int rcv_mbox (struct IsdnCardState*,struct isar_reg*,int *) ;
 struct BCState* sel_bcs_isar (struct IsdnCardState*,int) ;
 int sprintf (int *,char*,int,int) ;
 int stub1 (struct IsdnCardState*,int,int ,int ) ;
 int stub2 (struct IsdnCardState*,int,int ,int ) ;
 int stub3 (struct IsdnCardState*,int,int ,int ) ;
 int stub4 (struct IsdnCardState*,int,int ,int ) ;
 int stub5 (struct IsdnCardState*,int,int ,int ) ;

void
isar_int_main(struct IsdnCardState *cs)
{
 struct isar_reg *ireg = cs->bcs[0].hw.isar.reg;
 struct BCState *bcs;

 get_irq_infos(cs, ireg);
 switch (ireg->iis & ISAR_IIS_MSCMSD) {
  case 128:
   if ((bcs = sel_bcs_isar(cs, ireg->iis >> 6))) {
    isar_rcv_frame(cs, bcs);
   } else {
    debugl1(cs, "isar spurious IIS_RDATA %x/%x/%x",
     ireg->iis, ireg->cmsb, ireg->clsb);
    cs->BC_Write_Reg(cs, 1, ISAR_IIA, 0);
   }
   break;
  case 133:
   cs->BC_Write_Reg(cs, 1, ISAR_IIA, 0);
   ireg->bstat |= ireg->cmsb;
   check_send(cs, ireg->cmsb);
   break;
  case 136:
   if (cs->debug & L1_DEB_WARN)
    debugl1(cs, "Buffer STEV dpath%d msb(%x)",
     ireg->iis>>6, ireg->cmsb);
   cs->BC_Write_Reg(cs, 1, ISAR_IIA, 0);
   break;
  case 130:
   if ((bcs = sel_bcs_isar(cs, ireg->iis >> 6))) {
    rcv_mbox(cs, ireg, (u_char *)ireg->par);
    if (bcs->mode == L1_MODE_V32) {
     isar_pump_statev_modem(bcs, ireg->cmsb);
    } else if (bcs->mode == L1_MODE_FAX) {
     isar_pump_statev_fax(bcs, ireg->cmsb);
    } else if (ireg->cmsb == PSEV_10MS_TIMER) {
     if (cs->debug & L1_DEB_HSCX)
      debugl1(cs, "pump stev TIMER");
    } else {
     if (cs->debug & L1_DEB_WARN)
      debugl1(cs, "isar IIS_PSTEV pmode %d stat %x",
       bcs->mode, ireg->cmsb);
    }
   } else {
    debugl1(cs, "isar spurious IIS_PSTEV %x/%x/%x",
     ireg->iis, ireg->cmsb, ireg->clsb);
    cs->BC_Write_Reg(cs, 1, ISAR_IIA, 0);
   }
   break;
  case 129:
   if ((bcs = sel_bcs_isar(cs, ireg->iis >> 6))) {
    rcv_mbox(cs, ireg, (u_char *)ireg->par);
    isar_pump_status_rsp(bcs, ireg);
   } else {
    debugl1(cs, "isar spurious IIS_PSTRSP %x/%x/%x",
     ireg->iis, ireg->cmsb, ireg->clsb);
    cs->BC_Write_Reg(cs, 1, ISAR_IIA, 0);
   }
   break;
  case 134:
  case 135:
  case 131:
   rcv_mbox(cs, ireg, (u_char *)ireg->par);
   if ((cs->debug & (L1_DEB_HSCX | L1_DEB_HSCX_FIFO))
    == L1_DEB_HSCX) {
    u_char *tp=debbuf;

    tp += sprintf(debbuf, "msg iis(%x) msb(%x)",
     ireg->iis, ireg->cmsb);
    QuickHex(tp, (u_char *)ireg->par, ireg->clsb);
    debugl1(cs, debbuf);
   }
   break;
  case 132:
   rcv_mbox(cs, ireg, debbuf);
   if (cs->debug & L1_DEB_WARN)
    debugl1(cs, "invalid msg his:%x",
     ireg->cmsb);
   break;
  default:
   rcv_mbox(cs, ireg, debbuf);
   if (cs->debug & L1_DEB_WARN)
    debugl1(cs, "unhandled msg iis(%x) ctrl(%x/%x)",
     ireg->iis, ireg->cmsb, ireg->clsb);
   break;
 }
}
