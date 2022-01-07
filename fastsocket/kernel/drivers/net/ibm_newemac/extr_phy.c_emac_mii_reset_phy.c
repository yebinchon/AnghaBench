
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_phy {int dummy; } ;


 int BMCR_ANENABLE ;
 int BMCR_ISOLATE ;
 int BMCR_RESET ;
 int MII_BMCR ;
 int phy_read (struct mii_phy*,int ) ;
 int phy_write (struct mii_phy*,int ,int) ;
 int udelay (int) ;

int emac_mii_reset_phy(struct mii_phy *phy)
{
 int val;
 int limit = 10000;

 val = phy_read(phy, MII_BMCR);
 val &= ~(BMCR_ISOLATE | BMCR_ANENABLE);
 val |= BMCR_RESET;
 phy_write(phy, MII_BMCR, val);

 udelay(300);

 while (--limit) {
  val = phy_read(phy, MII_BMCR);
  if (val >= 0 && (val & BMCR_RESET) == 0)
   break;
  udelay(10);
 }
 if ((val & BMCR_ISOLATE) && limit > 0)
  phy_write(phy, MII_BMCR, val & ~BMCR_ISOLATE);

 return limit <= 0;
}
