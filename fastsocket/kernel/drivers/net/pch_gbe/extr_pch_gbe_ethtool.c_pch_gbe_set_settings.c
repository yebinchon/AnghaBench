
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {int autoneg; int link_duplex; scalar_t__ link_speed; } ;
struct TYPE_3__ {int autoneg_advertised; } ;
struct pch_gbe_hw {TYPE_2__ mac; TYPE_1__ phy; } ;
struct pch_gbe_adapter {int netdev; int mii; struct pch_gbe_hw hw; } ;
struct net_device {int dummy; } ;
struct ethtool_cmd {int autoneg; int advertising; int duplex; } ;


 int BMCR_RESET ;
 int DUPLEX_FULL ;
 int MII_BMCR ;
 scalar_t__ SPEED_1000 ;
 scalar_t__ UINT_MAX ;
 scalar_t__ ethtool_cmd_speed (struct ethtool_cmd*) ;
 int mii_ethtool_sset (int *,struct ethtool_cmd*) ;
 struct pch_gbe_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (int ) ;
 int pch_gbe_down (struct pch_gbe_adapter*) ;
 int pch_gbe_hal_phy_sw_reset (struct pch_gbe_hw*) ;
 int pch_gbe_hal_write_phy_reg (struct pch_gbe_hw*,int ,int ) ;
 int pch_gbe_reset (struct pch_gbe_adapter*) ;
 int pch_gbe_up (struct pch_gbe_adapter*) ;
 int pr_err (char*) ;

__attribute__((used)) static int pch_gbe_set_settings(struct net_device *netdev,
     struct ethtool_cmd *ecmd)
{
 struct pch_gbe_adapter *adapter = netdev_priv(netdev);
 struct pch_gbe_hw *hw = &adapter->hw;
 u32 speed = ethtool_cmd_speed(ecmd);
 int ret;

 pch_gbe_hal_write_phy_reg(hw, MII_BMCR, BMCR_RESET);



 if (speed == UINT_MAX) {
  speed = SPEED_1000;
  ecmd->duplex = DUPLEX_FULL;
 }
 ret = mii_ethtool_sset(&adapter->mii, ecmd);
 if (ret) {
  pr_err("Error: mii_ethtool_sset\n");
  return ret;
 }
 hw->mac.link_speed = speed;
 hw->mac.link_duplex = ecmd->duplex;
 hw->phy.autoneg_advertised = ecmd->advertising;
 hw->mac.autoneg = ecmd->autoneg;
 pch_gbe_hal_phy_sw_reset(hw);


 if (netif_running(adapter->netdev)) {
  pch_gbe_down(adapter);
  ret = pch_gbe_up(adapter);
 } else {
  pch_gbe_reset(adapter);
 }
 return ret;
}
