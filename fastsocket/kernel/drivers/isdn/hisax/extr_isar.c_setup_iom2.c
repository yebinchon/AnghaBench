
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct IsdnCardState {int dummy; } ;
struct TYPE_3__ {int dpath; } ;
struct TYPE_4__ {TYPE_1__ isar; } ;
struct BCState {int mode; TYPE_2__ hw; scalar_t__ channel; struct IsdnCardState* cs; } ;


 int IOM_CTRL_ALAW ;
 int IOM_CTRL_ENA ;
 int IOM_CTRL_RCV ;
 int IOM_P1_TXD ;
 int ISAR_HIS_IOM2CFG ;
 int ISAR_HIS_IOM2REQ ;





 int SET_DPS (int ) ;
 int sendmsg (struct IsdnCardState*,int,int,int,int*) ;
 int udelay (int) ;

__attribute__((used)) static void
setup_iom2(struct BCState *bcs) {
 struct IsdnCardState *cs = bcs->cs;
 u_char dps = SET_DPS(bcs->hw.isar.dpath);
 u_char cmsb = IOM_CTRL_ENA, msg[5] = {IOM_P1_TXD,0,0,0,0};

 if (bcs->channel)
  msg[1] = msg[3] = 1;
 switch (bcs->mode) {
  case 130:
   cmsb = 0;

   msg[1] = msg[3] = bcs->hw.isar.dpath + 2;
   break;
  case 129:
  case 131:
   break;
  case 128:
  case 132:
   cmsb |= IOM_CTRL_ALAW | IOM_CTRL_RCV;
   break;
 }
 sendmsg(cs, dps | ISAR_HIS_IOM2CFG, cmsb, 5, msg);
 udelay(1000);
 sendmsg(cs, dps | ISAR_HIS_IOM2REQ, 0, 0, ((void*)0));
 udelay(1000);
}
