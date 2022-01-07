
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dev_flags; } ;


 int BCM54XX_SHD_RGMII_MODE ;
 scalar_t__ BRCM_PHY_MODEL (struct phy_device*) ;
 int MII_BCM54XX_ECR ;
 int MII_BCM54XX_ECR_IM ;
 int MII_BCM54XX_IMR ;
 int MII_BCM54XX_INT_DUPLEX ;
 int MII_BCM54XX_INT_LINK ;
 int MII_BCM54XX_INT_SPEED ;
 int PHY_BRCM_AUTO_PWRDWN_ENABLE ;
 int PHY_BRCM_CLEAR_RGMII_MODE ;
 int PHY_BRCM_DIS_TXCRXC_NOENRGY ;
 int PHY_BRCM_RX_REFCLK_UNUSED ;
 scalar_t__ PHY_ID_BCM50610 ;
 scalar_t__ PHY_ID_BCM50610M ;
 int bcm54xx_adjust_rxrefclk (struct phy_device*) ;
 int bcm54xx_phydsp_config (struct phy_device*) ;
 int bcm54xx_shadow_write (struct phy_device*,int ,int ) ;
 int phy_read (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int) ;

__attribute__((used)) static int bcm54xx_config_init(struct phy_device *phydev)
{
 int reg, err;

 reg = phy_read(phydev, MII_BCM54XX_ECR);
 if (reg < 0)
  return reg;


 reg |= MII_BCM54XX_ECR_IM;
 err = phy_write(phydev, MII_BCM54XX_ECR, reg);
 if (err < 0)
  return err;


 reg = ~(MII_BCM54XX_INT_DUPLEX |
  MII_BCM54XX_INT_SPEED |
  MII_BCM54XX_INT_LINK);
 err = phy_write(phydev, MII_BCM54XX_IMR, reg);
 if (err < 0)
  return err;

 if ((BRCM_PHY_MODEL(phydev) == PHY_ID_BCM50610 ||
      BRCM_PHY_MODEL(phydev) == PHY_ID_BCM50610M) &&
     (phydev->dev_flags & PHY_BRCM_CLEAR_RGMII_MODE))
  bcm54xx_shadow_write(phydev, BCM54XX_SHD_RGMII_MODE, 0);

 if ((phydev->dev_flags & PHY_BRCM_RX_REFCLK_UNUSED) ||
     (phydev->dev_flags & PHY_BRCM_DIS_TXCRXC_NOENRGY) ||
     (phydev->dev_flags & PHY_BRCM_AUTO_PWRDWN_ENABLE))
  bcm54xx_adjust_rxrefclk(phydev);

 bcm54xx_phydsp_config(phydev);

 return 0;
}
