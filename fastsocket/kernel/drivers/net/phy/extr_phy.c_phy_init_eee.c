
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct phy_device {scalar_t__ duplex; scalar_t__ interface; int addr; int bus; int speed; } ;
struct TYPE_2__ {int setting; } ;


 scalar_t__ DUPLEX_FULL ;
 int EPROTONOSUPPORT ;
 int MDIO_AN_EEE_ADV ;
 int MDIO_AN_EEE_LPABLE ;
 int MDIO_CTRL1 ;
 int MDIO_MMD_AN ;
 int MDIO_MMD_PCS ;
 int MDIO_PCS_CTRL1_CLKSTOP_EN ;
 int MDIO_PCS_EEE_ABLE ;
 scalar_t__ PHY_INTERFACE_MODE_GMII ;
 scalar_t__ PHY_INTERFACE_MODE_MII ;
 scalar_t__ PHY_INTERFACE_MODE_RGMII ;
 int mmd_eee_adv_to_ethtool_adv_t (int) ;
 int mmd_eee_cap_to_ethtool_sup_t (int) ;
 int phy_find_setting (int ,scalar_t__) ;
 int phy_read_mmd_indirect (int ,int ,int ,int ) ;
 int phy_read_status (struct phy_device*) ;
 int phy_write_mmd_indirect (int ,int ,int ,int ,int) ;
 TYPE_1__* settings ;

int phy_init_eee(struct phy_device *phydev, bool clk_stop_enable)
{
 int ret = -EPROTONOSUPPORT;





 if ((phydev->duplex == DUPLEX_FULL) &&
     ((phydev->interface == PHY_INTERFACE_MODE_MII) ||
     (phydev->interface == PHY_INTERFACE_MODE_GMII) ||
     (phydev->interface == PHY_INTERFACE_MODE_RGMII))) {
  int eee_lp, eee_cap, eee_adv;
  u32 lp, cap, adv;
  int idx, status;


  status = phy_read_status(phydev);
  if (status)
   return status;


  eee_cap = phy_read_mmd_indirect(phydev->bus, MDIO_PCS_EEE_ABLE,
      MDIO_MMD_PCS, phydev->addr);
  if (eee_cap < 0)
   return eee_cap;

  cap = mmd_eee_cap_to_ethtool_sup_t(eee_cap);
  if (!cap)
   goto eee_exit;




  eee_lp = phy_read_mmd_indirect(phydev->bus, MDIO_AN_EEE_LPABLE,
            MDIO_MMD_AN, phydev->addr);
  if (eee_lp < 0)
   return eee_lp;

  eee_adv = phy_read_mmd_indirect(phydev->bus, MDIO_AN_EEE_ADV,
      MDIO_MMD_AN, phydev->addr);
  if (eee_adv < 0)
   return eee_adv;

  adv = mmd_eee_adv_to_ethtool_adv_t(eee_adv);
  lp = mmd_eee_adv_to_ethtool_adv_t(eee_lp);
  idx = phy_find_setting(phydev->speed, phydev->duplex);
  if (!(lp & adv & settings[idx].setting))
   goto eee_exit;

  if (clk_stop_enable) {



   int val = phy_read_mmd_indirect(phydev->bus, MDIO_CTRL1,
       MDIO_MMD_PCS,
       phydev->addr);
   if (val < 0)
    return val;

   val |= MDIO_PCS_CTRL1_CLKSTOP_EN;
   phy_write_mmd_indirect(phydev->bus, MDIO_CTRL1,
            MDIO_MMD_PCS, phydev->addr, val);
  }

  ret = 0;
 }

eee_exit:
 return ret;
}
