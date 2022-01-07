
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct IsdnCardState {int dummy; } ;
struct TYPE_4__ {int cmd; int mod; int newmod; int try_mod; void* state; void* newcmd; int dpath; } ;
struct TYPE_3__ {TYPE_2__ isar; } ;
struct BCState {TYPE_1__ hw; int Flag; struct IsdnCardState* cs; } ;


 int BC_FLG_FRH_WAIT ;
 int ISAR_HIS_PUMPCTRL ;

 int ISDN_FAX_CLASS1_CONNECT ;




 int PCTRL_CMD_ESC ;
 void* PCTRL_CMD_FRH ;
 void* PCTRL_CMD_FRM ;
 void* PCTRL_CMD_FTH ;
 void* PCTRL_CMD_FTM ;
 int PCTRL_CMD_HALT ;
 int SET_DPS (int ) ;
 void* STFAX_ACTIV ;
 void* STFAX_ESCAPE ;
 void* STFAX_LINE ;
 void* STFAX_NULL ;
 void* STFAX_READY ;
 int ll_deliver_faxstat (struct BCState*,int ) ;
 int sendmsg (struct IsdnCardState*,int,int,int,int*) ;
 int test_and_clear_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void
isar_pump_cmd(struct BCState *bcs, u_char cmd, u_char para)
{
 struct IsdnCardState *cs = bcs->cs;
 u_char dps = SET_DPS(bcs->hw.isar.dpath);
 u_char ctrl = 0, nom = 0, p1 = 0;

 switch(cmd) {
  case 128:
   test_and_clear_bit(BC_FLG_FRH_WAIT, &bcs->Flag);
   if (bcs->hw.isar.state == STFAX_READY) {
    p1 = para;
    ctrl = PCTRL_CMD_FTM;
    nom = 1;
    bcs->hw.isar.state = STFAX_LINE;
    bcs->hw.isar.cmd = ctrl;
    bcs->hw.isar.mod = para;
    bcs->hw.isar.newmod = 0;
    bcs->hw.isar.newcmd = 0;
    bcs->hw.isar.try_mod = 3;
   } else if ((bcs->hw.isar.state == STFAX_ACTIV) &&
    (bcs->hw.isar.cmd == PCTRL_CMD_FTM) &&
    (bcs->hw.isar.mod == para)) {
    ll_deliver_faxstat(bcs, ISDN_FAX_CLASS1_CONNECT);
   } else {
    bcs->hw.isar.newmod = para;
    bcs->hw.isar.newcmd = PCTRL_CMD_FTM;
    nom = 0;
    ctrl = PCTRL_CMD_ESC;
    bcs->hw.isar.state = STFAX_ESCAPE;
   }
   break;
  case 129:
   test_and_clear_bit(BC_FLG_FRH_WAIT, &bcs->Flag);
   if (bcs->hw.isar.state == STFAX_READY) {
    p1 = para;
    ctrl = PCTRL_CMD_FTH;
    nom = 1;
    bcs->hw.isar.state = STFAX_LINE;
    bcs->hw.isar.cmd = ctrl;
    bcs->hw.isar.mod = para;
    bcs->hw.isar.newmod = 0;
    bcs->hw.isar.newcmd = 0;
    bcs->hw.isar.try_mod = 3;
   } else if ((bcs->hw.isar.state == STFAX_ACTIV) &&
    (bcs->hw.isar.cmd == PCTRL_CMD_FTH) &&
    (bcs->hw.isar.mod == para)) {
    ll_deliver_faxstat(bcs, ISDN_FAX_CLASS1_CONNECT);
   } else {
    bcs->hw.isar.newmod = para;
    bcs->hw.isar.newcmd = PCTRL_CMD_FTH;
    nom = 0;
    ctrl = PCTRL_CMD_ESC;
    bcs->hw.isar.state = STFAX_ESCAPE;
   }
   break;
  case 130:
   test_and_clear_bit(BC_FLG_FRH_WAIT, &bcs->Flag);
   if (bcs->hw.isar.state == STFAX_READY) {
    p1 = para;
    ctrl = PCTRL_CMD_FRM;
    nom = 1;
    bcs->hw.isar.state = STFAX_LINE;
    bcs->hw.isar.cmd = ctrl;
    bcs->hw.isar.mod = para;
    bcs->hw.isar.newmod = 0;
    bcs->hw.isar.newcmd = 0;
    bcs->hw.isar.try_mod = 3;
   } else if ((bcs->hw.isar.state == STFAX_ACTIV) &&
    (bcs->hw.isar.cmd == PCTRL_CMD_FRM) &&
    (bcs->hw.isar.mod == para)) {
    ll_deliver_faxstat(bcs, ISDN_FAX_CLASS1_CONNECT);
   } else {
    bcs->hw.isar.newmod = para;
    bcs->hw.isar.newcmd = PCTRL_CMD_FRM;
    nom = 0;
    ctrl = PCTRL_CMD_ESC;
    bcs->hw.isar.state = STFAX_ESCAPE;
   }
   break;
  case 131:
   test_and_set_bit(BC_FLG_FRH_WAIT, &bcs->Flag);
   if (bcs->hw.isar.state == STFAX_READY) {
    p1 = para;
    ctrl = PCTRL_CMD_FRH;
    nom = 1;
    bcs->hw.isar.state = STFAX_LINE;
    bcs->hw.isar.cmd = ctrl;
    bcs->hw.isar.mod = para;
    bcs->hw.isar.newmod = 0;
    bcs->hw.isar.newcmd = 0;
    bcs->hw.isar.try_mod = 3;
   } else if ((bcs->hw.isar.state == STFAX_ACTIV) &&
    (bcs->hw.isar.cmd == PCTRL_CMD_FRH) &&
    (bcs->hw.isar.mod == para)) {
    ll_deliver_faxstat(bcs, ISDN_FAX_CLASS1_CONNECT);
   } else {
    bcs->hw.isar.newmod = para;
    bcs->hw.isar.newcmd = PCTRL_CMD_FRH;
    nom = 0;
    ctrl = PCTRL_CMD_ESC;
    bcs->hw.isar.state = STFAX_ESCAPE;
   }
   break;
  case 132:
   bcs->hw.isar.state = STFAX_NULL;
   nom = 0;
   ctrl = PCTRL_CMD_HALT;
   break;
 }
 if (ctrl)
  sendmsg(cs, dps | ISAR_HIS_PUMPCTRL, ctrl, nom, &p1);
}
