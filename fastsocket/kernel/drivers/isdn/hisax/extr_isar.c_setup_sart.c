
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef char u_char ;
struct IsdnCardState {int dummy; } ;
struct TYPE_3__ {int dpath; } ;
struct TYPE_4__ {TYPE_1__ isar; } ;
struct BCState {int mode; TYPE_2__ hw; struct IsdnCardState* cs; } ;


 char ISAR_HIS_BSTREQ ;
 char ISAR_HIS_SARTCFG ;





 char SCTRL_HDMC_BOTH ;
 char SET_DPS (int ) ;
 char SMODE_BINARY ;
 char SMODE_DISABLE ;
 char SMODE_HDLC ;
 char SMODE_V14 ;
 char S_P1_CHS_8 ;
 char S_P2_BFT_DEF ;
 int sendmsg (struct IsdnCardState*,char,char,int,char*) ;
 int udelay (int) ;

__attribute__((used)) static void
setup_sart(struct BCState *bcs) {
 struct IsdnCardState *cs = bcs->cs;
 u_char dps = SET_DPS(bcs->hw.isar.dpath);
 u_char ctrl, param[2];

 switch (bcs->mode) {
  case 130:
   sendmsg(cs, dps | ISAR_HIS_SARTCFG, SMODE_DISABLE, 0,
    ((void*)0));
   break;
  case 129:
   sendmsg(cs, dps | ISAR_HIS_SARTCFG, SMODE_BINARY, 2,
    "\0\0");
   break;
  case 131:
   param[0] = 0;
   sendmsg(cs, dps | ISAR_HIS_SARTCFG, SMODE_HDLC, 1,
    param);
   break;
  case 128:
   ctrl = SMODE_V14 | SCTRL_HDMC_BOTH;
   param[0] = S_P1_CHS_8;
   param[1] = S_P2_BFT_DEF;
   sendmsg(cs, dps | ISAR_HIS_SARTCFG, ctrl, 2,
    param);
   break;
  case 132:

   break;
 }
 udelay(1000);
 sendmsg(cs, dps | ISAR_HIS_BSTREQ, 0, 0, ((void*)0));
 udelay(1000);
}
