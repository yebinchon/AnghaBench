
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_char ;
struct IsdnCardState {int debug; } ;
struct TYPE_9__ {int expires; } ;
struct TYPE_7__ {void* state; int cmd; int newcmd; int mod; int newmod; int try_mod; TYPE_4__ ftimer; TYPE_1__* reg; int dpath; } ;
struct TYPE_8__ {TYPE_2__ isar; } ;
struct BCState {TYPE_3__ hw; int Flag; int st; struct IsdnCardState* cs; } ;
struct TYPE_6__ {int Flags; } ;


 int BC_FLG_FTI_RUN ;
 int BC_FLG_LL_CONN ;
 int BC_FLG_LL_OK ;
 int BC_FLG_ORIG ;
 int B_LL_CONNECT ;
 int B_LL_NOCARRIER ;
 int B_LL_OK ;
 int HZ ;
 int ISAR_HIS_PSTREQ ;
 int ISAR_HIS_PUMPCTRL ;
 int ISAR_RATE_REQ ;
 int ISDN_FAX_CLASS1_FCERROR ;
 int ISDN_FAX_CLASS1_FRH ;
 int ISDN_FAX_CLASS1_FTH ;
 int L1_DEB_HSCX ;
 int L1_DEB_WARN ;
 int PCTRL_CMD_CONT ;
 int PCTRL_CMD_ESC ;




 int PCTRL_CMD_SILON ;
 int PH_ACTIVATE ;
 int REQUEST ;
 int SET_DPS (int ) ;
 void* STFAX_ACTIV ;
 void* STFAX_CONT ;
 void* STFAX_ESCAPE ;
 void* STFAX_LINE ;
 void* STFAX_READY ;
 void* STFAX_SILDET ;
 int add_timer (TYPE_4__*) ;
 int debugl1 (struct IsdnCardState*,char*,...) ;
 int del_timer (TYPE_4__*) ;
 int frm_extra_delay ;
 int isar_pump_cmd (struct BCState*,int ,int) ;
 int jiffies ;
 int l1_msg_b (int ,int,int *) ;
 int ll_deliver_faxstat (struct BCState*,int ) ;
 int mdelay (int ) ;
 int schedule_event (struct BCState*,int ) ;
 int send_DLE_ETX (struct BCState*) ;
 int sendmsg (struct IsdnCardState*,int,int,int,int*) ;
 int test_and_clear_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void
isar_pump_statev_fax(struct BCState *bcs, u_char devt) {
 struct IsdnCardState *cs = bcs->cs;
 u_char dps = SET_DPS(bcs->hw.isar.dpath);
 u_char p1;

 switch(devt) {
  case 139:
   if (cs->debug & L1_DEB_HSCX)
    debugl1(cs, "pump stev TIMER");
   break;
  case 130:
   if (cs->debug & L1_DEB_HSCX)
    debugl1(cs, "pump stev RSP_READY");
   bcs->hw.isar.state = STFAX_READY;
   l1_msg_b(bcs->st, PH_ACTIVATE | REQUEST, ((void*)0));
   if (test_bit(BC_FLG_ORIG, &bcs->Flag)) {
    isar_pump_cmd(bcs, ISDN_FAX_CLASS1_FRH, 3);
   } else {
    isar_pump_cmd(bcs, ISDN_FAX_CLASS1_FTH, 3);
   }
   break;
  case 134:
   if (bcs->hw.isar.state == STFAX_LINE) {
    if (cs->debug & L1_DEB_HSCX)
     debugl1(cs, "pump stev LINE_TX_H");
    bcs->hw.isar.state = STFAX_CONT;
    sendmsg(cs, dps | ISAR_HIS_PUMPCTRL, PCTRL_CMD_CONT, 0, ((void*)0));
   } else {
    if (cs->debug & L1_DEB_WARN)
     debugl1(cs, "pump stev LINE_TX_H wrong st %x",
      bcs->hw.isar.state);
   }
   break;
  case 136:
   if (bcs->hw.isar.state == STFAX_LINE) {
    if (cs->debug & L1_DEB_HSCX)
     debugl1(cs, "pump stev LINE_RX_H");
    bcs->hw.isar.state = STFAX_CONT;
    sendmsg(cs, dps | ISAR_HIS_PUMPCTRL, PCTRL_CMD_CONT, 0, ((void*)0));
   } else {
    if (cs->debug & L1_DEB_WARN)
     debugl1(cs, "pump stev LINE_RX_H wrong st %x",
      bcs->hw.isar.state);
   }
   break;
  case 135:
   if (bcs->hw.isar.state == STFAX_LINE) {
    if (cs->debug & L1_DEB_HSCX)
     debugl1(cs, "pump stev LINE_TX_B");
    bcs->hw.isar.state = STFAX_CONT;
    sendmsg(cs, dps | ISAR_HIS_PUMPCTRL, PCTRL_CMD_CONT, 0, ((void*)0));
   } else {
    if (cs->debug & L1_DEB_WARN)
     debugl1(cs, "pump stev LINE_TX_B wrong st %x",
      bcs->hw.isar.state);
   }
   break;
  case 137:
   if (bcs->hw.isar.state == STFAX_LINE) {
    if (cs->debug & L1_DEB_HSCX)
     debugl1(cs, "pump stev LINE_RX_B");
    bcs->hw.isar.state = STFAX_CONT;
    sendmsg(cs, dps | ISAR_HIS_PUMPCTRL, PCTRL_CMD_CONT, 0, ((void*)0));
   } else {
    if (cs->debug & L1_DEB_WARN)
     debugl1(cs, "pump stev LINE_RX_B wrong st %x",
      bcs->hw.isar.state);
   }
   break;
  case 133:
   if (bcs->hw.isar.state == STFAX_CONT) {
    if (cs->debug & L1_DEB_HSCX)
     debugl1(cs, "pump stev RSP_CONN");
    bcs->hw.isar.state = STFAX_ACTIV;
    test_and_set_bit(ISAR_RATE_REQ, &bcs->hw.isar.reg->Flags);
    sendmsg(cs, dps | ISAR_HIS_PSTREQ, 0, 0, ((void*)0));
    if (bcs->hw.isar.cmd == 141) {

     if (test_and_set_bit(BC_FLG_FTI_RUN, &bcs->Flag))
      del_timer(&bcs->hw.isar.ftimer);

     bcs->hw.isar.ftimer.expires =
      jiffies + ((1000 * HZ)/1000);
     test_and_set_bit(BC_FLG_LL_CONN,
      &bcs->Flag);
     add_timer(&bcs->hw.isar.ftimer);
    } else {
     schedule_event(bcs, B_LL_CONNECT);
    }
   } else {
    if (cs->debug & L1_DEB_WARN)
     debugl1(cs, "pump stev RSP_CONN wrong st %x",
      bcs->hw.isar.state);
   }
   break;
  case 138:
   if (cs->debug & L1_DEB_HSCX)
    debugl1(cs, "pump stev FLAGS_DET");
   break;
  case 132:
   if (cs->debug & L1_DEB_HSCX)
    debugl1(cs, "pump stev RSP_DISC");
   if (bcs->hw.isar.state == STFAX_ESCAPE) {
    p1 = 5;
    switch(bcs->hw.isar.newcmd) {
     case 0:
      bcs->hw.isar.state = STFAX_READY;
      break;
     case 140:
      p1 = 2;
     case 141:
      sendmsg(cs, dps | ISAR_HIS_PUMPCTRL,
       PCTRL_CMD_SILON, 1, &p1);
      bcs->hw.isar.state = STFAX_SILDET;
      break;
     case 142:
      if (frm_extra_delay)
       mdelay(frm_extra_delay);
     case 143:
      p1 = bcs->hw.isar.mod = bcs->hw.isar.newmod;
      bcs->hw.isar.newmod = 0;
      bcs->hw.isar.cmd = bcs->hw.isar.newcmd;
      bcs->hw.isar.newcmd = 0;
      sendmsg(cs, dps | ISAR_HIS_PUMPCTRL,
       bcs->hw.isar.cmd, 1, &p1);
      bcs->hw.isar.state = STFAX_LINE;
      bcs->hw.isar.try_mod = 3;
      break;
     default:
      if (cs->debug & L1_DEB_HSCX)
       debugl1(cs, "RSP_DISC unknown newcmd %x", bcs->hw.isar.newcmd);
      break;
    }
   } else if (bcs->hw.isar.state == STFAX_ACTIV) {
    if (test_and_clear_bit(BC_FLG_LL_OK, &bcs->Flag)) {
     schedule_event(bcs, B_LL_OK);
    } else if (bcs->hw.isar.cmd == 142) {
     send_DLE_ETX(bcs);
     schedule_event(bcs, B_LL_NOCARRIER);
    } else {
     ll_deliver_faxstat(bcs, ISDN_FAX_CLASS1_FCERROR);
    }
    bcs->hw.isar.state = STFAX_READY;
   } else {
    bcs->hw.isar.state = STFAX_READY;
    ll_deliver_faxstat(bcs, ISDN_FAX_CLASS1_FCERROR);
   }
   break;
  case 129:
   if (cs->debug & L1_DEB_HSCX)
    debugl1(cs, "pump stev RSP_SILDET");
   if (bcs->hw.isar.state == STFAX_SILDET) {
    p1 = bcs->hw.isar.mod = bcs->hw.isar.newmod;
    bcs->hw.isar.newmod = 0;
    bcs->hw.isar.cmd = bcs->hw.isar.newcmd;
    bcs->hw.isar.newcmd = 0;
    sendmsg(cs, dps | ISAR_HIS_PUMPCTRL,
     bcs->hw.isar.cmd, 1, &p1);
    bcs->hw.isar.state = STFAX_LINE;
    bcs->hw.isar.try_mod = 3;
   }
   break;
  case 128:
   if (cs->debug & L1_DEB_HSCX)
    debugl1(cs, "pump stev RSP_SILOFF");
   break;
  case 131:
   if (bcs->hw.isar.state == STFAX_LINE) {
    if (cs->debug & L1_DEB_HSCX)
     debugl1(cs, "pump stev RSP_FCERR try %d",
      bcs->hw.isar.try_mod);
    if (bcs->hw.isar.try_mod--) {
     sendmsg(cs, dps | ISAR_HIS_PUMPCTRL,
      bcs->hw.isar.cmd, 1,
      &bcs->hw.isar.mod);
     break;
    }
   }
   if (cs->debug & L1_DEB_HSCX)
    debugl1(cs, "pump stev RSP_FCERR");
   bcs->hw.isar.state = STFAX_ESCAPE;
   sendmsg(cs, dps | ISAR_HIS_PUMPCTRL, PCTRL_CMD_ESC, 0, ((void*)0));
   ll_deliver_faxstat(bcs, ISDN_FAX_CLASS1_FCERROR);
   break;
  default:
   break;
 }
}
