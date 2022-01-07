
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct IsdnCardState {int debug; } ;
struct TYPE_5__ {TYPE_1__* reg; int dpath; } ;
struct TYPE_6__ {TYPE_2__ isar; } ;
struct BCState {TYPE_3__ hw; int st; struct IsdnCardState* cs; } ;
struct TYPE_4__ {int Flags; } ;


 int ISAR_HIS_PSTREQ ;
 int ISAR_RATE_REQ ;
 int L1_DEB_HSCX ;
 int PH_ACTIVATE ;
 int PH_DEACTIVATE ;
 int REQUEST ;
 int SET_DPS (int ) ;
 int debugl1 (struct IsdnCardState*,char*,...) ;
 int l1_msg_b (int ,int,int *) ;
 int sendmsg (struct IsdnCardState*,int,int ,int ,int *) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void
isar_pump_statev_modem(struct BCState *bcs, u_char devt) {
 struct IsdnCardState *cs = bcs->cs;
 u_char dps = SET_DPS(bcs->hw.isar.dpath);

 switch(devt) {
  case 140:
   if (cs->debug & L1_DEB_HSCX)
    debugl1(cs, "pump stev TIMER");
   break;
  case 138:
   if (cs->debug & L1_DEB_HSCX)
    debugl1(cs, "pump stev CONNECT");
   l1_msg_b(bcs->st, PH_ACTIVATE | REQUEST, ((void*)0));
   break;
  case 139:
   if (cs->debug & L1_DEB_HSCX)
    debugl1(cs, "pump stev NO CONNECT");
   sendmsg(cs, dps | ISAR_HIS_PSTREQ, 0, 0, ((void*)0));
   l1_msg_b(bcs->st, PH_DEACTIVATE | REQUEST, ((void*)0));
   break;
  case 128:
   if (cs->debug & L1_DEB_HSCX)
    debugl1(cs, "pump stev V24 OFF");
   break;
  case 136:
   if (cs->debug & L1_DEB_HSCX)
    debugl1(cs, "pump stev CTS ON");
   break;
  case 137:
   if (cs->debug & L1_DEB_HSCX)
    debugl1(cs, "pump stev CTS OFF");
   break;
  case 134:
   if (cs->debug & L1_DEB_HSCX)
    debugl1(cs, "pump stev CARRIER ON");
   test_and_set_bit(ISAR_RATE_REQ, &bcs->hw.isar.reg->Flags);
   sendmsg(cs, dps | ISAR_HIS_PSTREQ, 0, 0, ((void*)0));
   break;
  case 135:
   if (cs->debug & L1_DEB_HSCX)
    debugl1(cs, "pump stev CARRIER OFF");
   break;
  case 132:
   if (cs->debug & L1_DEB_HSCX)
    debugl1(cs, "pump stev DSR ON");
   break;
  case 133:
   if (cs->debug & L1_DEB_HSCX)
    debugl1(cs, "pump stev DSR_OFF");
   break;
  case 129:
   if (cs->debug & L1_DEB_HSCX)
    debugl1(cs, "pump stev REMOTE RETRAIN");
   break;
  case 130:
   if (cs->debug & L1_DEB_HSCX)
    debugl1(cs, "pump stev REMOTE RENEGOTIATE");
   break;
  case 131:
   if (cs->debug & L1_DEB_HSCX)
    debugl1(cs, "pump stev GSTN CLEAR", devt);
   break;
  default:
   if (cs->debug & L1_DEB_HSCX)
    debugl1(cs, "unknown pump stev %x", devt);
   break;
 }
}
