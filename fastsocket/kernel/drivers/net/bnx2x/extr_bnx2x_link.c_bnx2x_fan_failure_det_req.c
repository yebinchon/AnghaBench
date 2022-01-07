
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct bnx2x_phy {scalar_t__ flags; } ;
struct bnx2x {int dummy; } ;


 int DP (int ,char*) ;
 scalar_t__ EXT_PHY1 ;
 scalar_t__ FLAGS_FAN_FAILURE_DET_REQ ;
 scalar_t__ MAX_PHYS ;
 int NETIF_MSG_LINK ;
 scalar_t__ bnx2x_populate_phy (struct bnx2x*,scalar_t__,int ,int ,scalar_t__,struct bnx2x_phy*) ;

u8 bnx2x_fan_failure_det_req(struct bnx2x *bp,
        u32 shmem_base,
        u32 shmem2_base,
        u8 port)
{
 u8 phy_index, fan_failure_det_req = 0;
 struct bnx2x_phy phy;
 for (phy_index = EXT_PHY1; phy_index < MAX_PHYS;
       phy_index++) {
  if (bnx2x_populate_phy(bp, phy_index, shmem_base, shmem2_base,
           port, &phy)
      != 0) {
   DP(NETIF_MSG_LINK, "populate phy failed\n");
   return 0;
  }
  fan_failure_det_req |= (phy.flags &
     FLAGS_FAN_FAILURE_DET_REQ);
 }
 return fan_failure_det_req;
}
