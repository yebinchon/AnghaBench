
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2 {int phy_flags; } ;


 scalar_t__ BNX2_CHIP (struct bnx2*) ;
 scalar_t__ BNX2_CHIP_5709 ;
 int BNX2_PHY_FLAG_SERDES ;
 int MII_BNX2_BLK_ADDR ;
 int MII_BNX2_BLK_ADDR_COMBO_IEEEB0 ;
 int bnx2_write_phy (struct bnx2*,int ,int ) ;

__attribute__((used)) static void
bnx2_disable_bmsr1(struct bnx2 *bp)
{
 if ((bp->phy_flags & BNX2_PHY_FLAG_SERDES) &&
     (BNX2_CHIP(bp) == BNX2_CHIP_5709))
  bnx2_write_phy(bp, MII_BNX2_BLK_ADDR,
          MII_BNX2_BLK_ADDR_COMBO_IEEEB0);
}
