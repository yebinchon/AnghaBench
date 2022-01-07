
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2 {int phy_flags; int line_speed; int mii_bmsr; scalar_t__ autoneg; int duplex; scalar_t__ link_up; } ;


 int BMSR_ANEGCOMPLETE ;
 int BNX2_LINK_STATUS ;
 int BNX2_LINK_STATUS_1000FULL ;
 int BNX2_LINK_STATUS_1000HALF ;
 int BNX2_LINK_STATUS_100FULL ;
 int BNX2_LINK_STATUS_100HALF ;
 int BNX2_LINK_STATUS_10FULL ;
 int BNX2_LINK_STATUS_10HALF ;
 int BNX2_LINK_STATUS_2500FULL ;
 int BNX2_LINK_STATUS_2500HALF ;
 int BNX2_LINK_STATUS_AN_COMPLETE ;
 int BNX2_LINK_STATUS_AN_ENABLED ;
 int BNX2_LINK_STATUS_LINK_DOWN ;
 int BNX2_LINK_STATUS_LINK_UP ;
 int BNX2_LINK_STATUS_PARALLEL_DET ;
 int BNX2_PHY_FLAG_PARALLEL_DETECT ;
 int BNX2_PHY_FLAG_REMOTE_PHY_CAP ;
 int DUPLEX_HALF ;




 int bnx2_read_phy (struct bnx2*,int ,int*) ;
 int bnx2_shmem_wr (struct bnx2*,int ,int) ;

__attribute__((used)) static void
bnx2_report_fw_link(struct bnx2 *bp)
{
 u32 fw_link_status = 0;

 if (bp->phy_flags & BNX2_PHY_FLAG_REMOTE_PHY_CAP)
  return;

 if (bp->link_up) {
  u32 bmsr;

  switch (bp->line_speed) {
  case 131:
   if (bp->duplex == DUPLEX_HALF)
    fw_link_status = BNX2_LINK_STATUS_10HALF;
   else
    fw_link_status = BNX2_LINK_STATUS_10FULL;
   break;
  case 130:
   if (bp->duplex == DUPLEX_HALF)
    fw_link_status = BNX2_LINK_STATUS_100HALF;
   else
    fw_link_status = BNX2_LINK_STATUS_100FULL;
   break;
  case 129:
   if (bp->duplex == DUPLEX_HALF)
    fw_link_status = BNX2_LINK_STATUS_1000HALF;
   else
    fw_link_status = BNX2_LINK_STATUS_1000FULL;
   break;
  case 128:
   if (bp->duplex == DUPLEX_HALF)
    fw_link_status = BNX2_LINK_STATUS_2500HALF;
   else
    fw_link_status = BNX2_LINK_STATUS_2500FULL;
   break;
  }

  fw_link_status |= BNX2_LINK_STATUS_LINK_UP;

  if (bp->autoneg) {
   fw_link_status |= BNX2_LINK_STATUS_AN_ENABLED;

   bnx2_read_phy(bp, bp->mii_bmsr, &bmsr);
   bnx2_read_phy(bp, bp->mii_bmsr, &bmsr);

   if (!(bmsr & BMSR_ANEGCOMPLETE) ||
       bp->phy_flags & BNX2_PHY_FLAG_PARALLEL_DETECT)
    fw_link_status |= BNX2_LINK_STATUS_PARALLEL_DET;
   else
    fw_link_status |= BNX2_LINK_STATUS_AN_COMPLETE;
  }
 }
 else
  fw_link_status = BNX2_LINK_STATUS_LINK_DOWN;

 bnx2_shmem_wr(bp, BNX2_LINK_STATUS, fw_link_status);
}
