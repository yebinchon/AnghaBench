
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phy_device {int dev_flags; } ;


 int BCM54XX_SHD_APD ;
 int BCM54XX_SHD_APD_EN ;
 int BCM54XX_SHD_SCR3 ;
 int BCM54XX_SHD_SCR3_DEF_CLK125 ;
 int BCM54XX_SHD_SCR3_DLLAPD_DIS ;
 int BCM54XX_SHD_SCR3_TRDDAPD ;
 scalar_t__ BRCM_PHY_MODEL (struct phy_device*) ;
 int BRCM_PHY_REV (struct phy_device*) ;
 int PHY_BRCM_AUTO_PWRDWN_ENABLE ;
 int PHY_BRCM_DIS_TXCRXC_NOENRGY ;
 int PHY_BRCM_RX_REFCLK_UNUSED ;
 scalar_t__ PHY_ID_BCM50610 ;
 scalar_t__ PHY_ID_BCM50610M ;
 scalar_t__ PHY_ID_BCM57780 ;
 int bcm54xx_shadow_read (struct phy_device*,int ) ;
 int bcm54xx_shadow_write (struct phy_device*,int ,int ) ;

__attribute__((used)) static void bcm54xx_adjust_rxrefclk(struct phy_device *phydev)
{
 u32 val, orig;
 bool clk125en = 1;


 if (BRCM_PHY_MODEL(phydev) != PHY_ID_BCM57780 ||
     BRCM_PHY_MODEL(phydev) != PHY_ID_BCM50610 ||
     BRCM_PHY_MODEL(phydev) != PHY_ID_BCM50610M)
  return;

 val = bcm54xx_shadow_read(phydev, BCM54XX_SHD_SCR3);
 if (val < 0)
  return;

 orig = val;

 if ((BRCM_PHY_MODEL(phydev) == PHY_ID_BCM50610 ||
      BRCM_PHY_MODEL(phydev) == PHY_ID_BCM50610M) &&
     BRCM_PHY_REV(phydev) >= 0x3) {




  clk125en = 0;
 } else {
  if (phydev->dev_flags & PHY_BRCM_RX_REFCLK_UNUSED) {

   val &= ~BCM54XX_SHD_SCR3_DEF_CLK125;
   clk125en = 0;
  }
 }

 if (clk125en == 0 ||
     (phydev->dev_flags & PHY_BRCM_AUTO_PWRDWN_ENABLE))
  val &= ~BCM54XX_SHD_SCR3_DLLAPD_DIS;
 else
  val |= BCM54XX_SHD_SCR3_DLLAPD_DIS;

 if (phydev->dev_flags & PHY_BRCM_DIS_TXCRXC_NOENRGY)
  val |= BCM54XX_SHD_SCR3_TRDDAPD;

 if (orig != val)
  bcm54xx_shadow_write(phydev, BCM54XX_SHD_SCR3, val);

 val = bcm54xx_shadow_read(phydev, BCM54XX_SHD_APD);
 if (val < 0)
  return;

 orig = val;

 if (clk125en == 0 ||
     (phydev->dev_flags & PHY_BRCM_AUTO_PWRDWN_ENABLE))
  val |= BCM54XX_SHD_APD_EN;
 else
  val &= ~BCM54XX_SHD_APD_EN;

 if (orig != val)
  bcm54xx_shadow_write(phydev, BCM54XX_SHD_APD, val);
}
