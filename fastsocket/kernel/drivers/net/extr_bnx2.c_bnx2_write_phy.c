
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2 {int phy_flags; int phy_addr; } ;


 int BNX2_EMAC_MDIO_COMM ;
 int BNX2_EMAC_MDIO_COMM_COMMAND_WRITE ;
 int BNX2_EMAC_MDIO_COMM_DISEXT ;
 int BNX2_EMAC_MDIO_COMM_START_BUSY ;
 int BNX2_EMAC_MDIO_MODE ;
 int BNX2_EMAC_MDIO_MODE_AUTO_POLL ;
 int BNX2_PHY_FLAG_INT_MODE_AUTO_POLLING ;
 int BNX2_RD (struct bnx2*,int ) ;
 int BNX2_WR (struct bnx2*,int ,int) ;
 int EBUSY ;
 int udelay (int) ;

__attribute__((used)) static int
bnx2_write_phy(struct bnx2 *bp, u32 reg, u32 val)
{
 u32 val1;
 int i, ret;

 if (bp->phy_flags & BNX2_PHY_FLAG_INT_MODE_AUTO_POLLING) {
  val1 = BNX2_RD(bp, BNX2_EMAC_MDIO_MODE);
  val1 &= ~BNX2_EMAC_MDIO_MODE_AUTO_POLL;

  BNX2_WR(bp, BNX2_EMAC_MDIO_MODE, val1);
  BNX2_RD(bp, BNX2_EMAC_MDIO_MODE);

  udelay(40);
 }

 val1 = (bp->phy_addr << 21) | (reg << 16) | val |
  BNX2_EMAC_MDIO_COMM_COMMAND_WRITE |
  BNX2_EMAC_MDIO_COMM_START_BUSY | BNX2_EMAC_MDIO_COMM_DISEXT;
 BNX2_WR(bp, BNX2_EMAC_MDIO_COMM, val1);

 for (i = 0; i < 50; i++) {
  udelay(10);

  val1 = BNX2_RD(bp, BNX2_EMAC_MDIO_COMM);
  if (!(val1 & BNX2_EMAC_MDIO_COMM_START_BUSY)) {
   udelay(5);
   break;
  }
 }

 if (val1 & BNX2_EMAC_MDIO_COMM_START_BUSY)
         ret = -EBUSY;
 else
  ret = 0;

 if (bp->phy_flags & BNX2_PHY_FLAG_INT_MODE_AUTO_POLLING) {
  val1 = BNX2_RD(bp, BNX2_EMAC_MDIO_MODE);
  val1 |= BNX2_EMAC_MDIO_MODE_AUTO_POLL;

  BNX2_WR(bp, BNX2_EMAC_MDIO_MODE, val1);
  BNX2_RD(bp, BNX2_EMAC_MDIO_MODE);

  udelay(40);
 }

 return ret;
}
