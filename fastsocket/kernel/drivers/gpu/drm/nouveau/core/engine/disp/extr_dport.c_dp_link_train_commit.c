
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct dp_state {int link_nr; int* stat; int* conf; int aux; int head; int outp; int disp; TYPE_1__* func; } ;
struct TYPE_2__ {int (* drv_ctl ) (int ,int ,int ,int,int,int) ;} ;


 int DBG (char*,int,int) ;
 int DPCD_LC03 (int ) ;
 int DPCD_LC03_MAX_PRE_EMPHASIS_REACHED ;
 int DPCD_LC03_MAX_SWING_REACHED ;
 int nv_wraux (int ,int ,int*,int) ;
 int stub1 (int ,int ,int ,int,int,int) ;

__attribute__((used)) static int
dp_link_train_commit(struct dp_state *dp)
{
 int i;

 for (i = 0; i < dp->link_nr; i++) {
  u8 lane = (dp->stat[4 + (i >> 1)] >> ((i & 1) * 4)) & 0xf;
  u8 lpre = (lane & 0x0c) >> 2;
  u8 lvsw = (lane & 0x03) >> 0;

  dp->conf[i] = (lpre << 3) | lvsw;
  if (lvsw == 3)
   dp->conf[i] |= DPCD_LC03_MAX_SWING_REACHED;
  if (lpre == 3)
   dp->conf[i] |= DPCD_LC03_MAX_PRE_EMPHASIS_REACHED;

  DBG("config lane %d %02x\n", i, dp->conf[i]);
  dp->func->drv_ctl(dp->disp, dp->outp, dp->head, i, lvsw, lpre);
 }

 return nv_wraux(dp->aux, DPCD_LC03(0), dp->conf, 4);
}
