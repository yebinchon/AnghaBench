
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct link_params {int port; struct bnx2x* bp; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_FLOW_CTRL_RX ;
 int DP (int ,char*,int,...) ;
 int EINVAL ;
 int ETH_MAX_JUMBO_PACKET_SIZE ;
 int ETH_OVREHEAD ;
 int NETIF_MSG_LINK ;
 scalar_t__ PBF_REG_DISABLE_NEW_TASK_PROC_P0 ;
 scalar_t__ PBF_REG_INIT_P0 ;
 scalar_t__ PBF_REG_P0_ARB_THRSH ;
 scalar_t__ PBF_REG_P0_CREDIT ;
 scalar_t__ PBF_REG_P0_INIT_CRD ;
 scalar_t__ PBF_REG_P0_PAUSE_ENABLE ;
 int REG_RD (struct bnx2x*,scalar_t__) ;
 int REG_WR (struct bnx2x*,scalar_t__,int) ;
 int SPEED_10 ;
 int SPEED_100 ;
 int SPEED_1000 ;

 int SPEED_2500 ;
 int usleep_range (int,int) ;

__attribute__((used)) static int bnx2x_pbf_update(struct link_params *params, u32 flow_ctrl,
       u32 line_speed)
{
 struct bnx2x *bp = params->bp;
 u8 port = params->port;
 u32 init_crd, crd;
 u32 count = 1000;


 REG_WR(bp, PBF_REG_DISABLE_NEW_TASK_PROC_P0 + port*4, 0x1);


 init_crd = REG_RD(bp, PBF_REG_P0_INIT_CRD + port*4);
 crd = REG_RD(bp, PBF_REG_P0_CREDIT + port*8);
 DP(NETIF_MSG_LINK, "init_crd 0x%x  crd 0x%x\n", init_crd, crd);

 while ((init_crd != crd) && count) {
  usleep_range(5000, 10000);
  crd = REG_RD(bp, PBF_REG_P0_CREDIT + port*8);
  count--;
 }
 crd = REG_RD(bp, PBF_REG_P0_CREDIT + port*8);
 if (init_crd != crd) {
  DP(NETIF_MSG_LINK, "BUG! init_crd 0x%x != crd 0x%x\n",
     init_crd, crd);
  return -EINVAL;
 }

 if (flow_ctrl & BNX2X_FLOW_CTRL_RX ||
     line_speed == SPEED_10 ||
     line_speed == SPEED_100 ||
     line_speed == SPEED_1000 ||
     line_speed == SPEED_2500) {
  REG_WR(bp, PBF_REG_P0_PAUSE_ENABLE + port*4, 1);

  REG_WR(bp, PBF_REG_P0_ARB_THRSH + port*4, 0);

  init_crd = 778;

 } else {
  u32 thresh = (ETH_MAX_JUMBO_PACKET_SIZE +
         ETH_OVREHEAD)/16;
  REG_WR(bp, PBF_REG_P0_PAUSE_ENABLE + port*4, 0);

  REG_WR(bp, PBF_REG_P0_ARB_THRSH + port*4, thresh);

  switch (line_speed) {
  case 128:
   init_crd = thresh + 553 - 22;
   break;
  default:
   DP(NETIF_MSG_LINK, "Invalid line_speed 0x%x\n",
      line_speed);
   return -EINVAL;
  }
 }
 REG_WR(bp, PBF_REG_P0_INIT_CRD + port*4, init_crd);
 DP(NETIF_MSG_LINK, "PBF updated to speed %d credit %d\n",
   line_speed, init_crd);


 REG_WR(bp, PBF_REG_INIT_P0 + port*4, 0x1);
 usleep_range(5000, 10000);
 REG_WR(bp, PBF_REG_INIT_P0 + port*4, 0x0);


 REG_WR(bp, PBF_REG_DISABLE_NEW_TASK_PROC_P0 + port*4, 0x0);
 return 0;
}
