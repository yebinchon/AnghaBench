
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_phy {scalar_t__ mode; } ;


 int BMCR_ANENABLE ;
 int BMCR_ISOLATE ;
 int BMCR_RESET ;
 int MII_BMCR ;
 scalar_t__ PHY_MODE_SGMII ;
 int gpcs_phy_read (struct mii_phy*,int) ;
 int gpcs_phy_write (struct mii_phy*,int,int) ;
 int udelay (int) ;

int emac_mii_reset_gpcs(struct mii_phy *phy)
{
 int val;
 int limit = 10000;

 val = gpcs_phy_read(phy, MII_BMCR);
 val &= ~(BMCR_ISOLATE | BMCR_ANENABLE);
 val |= BMCR_RESET;
 gpcs_phy_write(phy, MII_BMCR, val);

 udelay(300);

 while (--limit) {
  val = gpcs_phy_read(phy, MII_BMCR);
  if (val >= 0 && (val & BMCR_RESET) == 0)
   break;
  udelay(10);
 }
 if ((val & BMCR_ISOLATE) && limit > 0)
  gpcs_phy_write(phy, MII_BMCR, val & ~BMCR_ISOLATE);

 if (limit > 0 && phy->mode == PHY_MODE_SGMII) {

  gpcs_phy_write(phy, 0x04, 0x8120);
  gpcs_phy_write(phy, 0x07, 0x2801);
  gpcs_phy_write(phy, 0x00, 0x0140);
 }

 return limit <= 0;
}
