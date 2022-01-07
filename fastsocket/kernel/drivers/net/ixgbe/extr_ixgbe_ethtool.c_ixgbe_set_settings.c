
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct TYPE_5__ {int (* setup_link ) (struct ixgbe_hw*,scalar_t__,int) ;} ;
struct TYPE_6__ {int autotry_restart; TYPE_2__ ops; } ;
struct TYPE_4__ {scalar_t__ media_type; scalar_t__ autoneg_advertised; scalar_t__ multispeed_fiber; } ;
struct ixgbe_hw {TYPE_3__ mac; TYPE_1__ phy; } ;
struct ixgbe_adapter {struct ixgbe_hw hw; } ;
struct ethtool_cmd {scalar_t__ autoneg; int advertising; int supported; scalar_t__ duplex; } ;
typedef int s32 ;


 int ADVERTISED_10000baseT_Full ;
 int ADVERTISED_1000baseT_Full ;
 int ADVERTISED_100baseT_Full ;
 scalar_t__ AUTONEG_DISABLE ;
 scalar_t__ AUTONEG_ENABLE ;
 scalar_t__ DUPLEX_FULL ;
 int EINVAL ;
 scalar_t__ IXGBE_LINK_SPEED_100_FULL ;
 scalar_t__ IXGBE_LINK_SPEED_10GB_FULL ;
 scalar_t__ IXGBE_LINK_SPEED_1GB_FULL ;
 scalar_t__ SPEED_10000 ;
 int e_info (int ,char*,int) ;
 scalar_t__ ethtool_cmd_speed (struct ethtool_cmd*) ;
 scalar_t__ ixgbe_media_type_copper ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;
 int probe ;
 int stub1 (struct ixgbe_hw*,scalar_t__,int) ;
 int stub2 (struct ixgbe_hw*,scalar_t__,int) ;

__attribute__((used)) static int ixgbe_set_settings(struct net_device *netdev,
                              struct ethtool_cmd *ecmd)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);
 struct ixgbe_hw *hw = &adapter->hw;
 u32 advertised, old;
 s32 err = 0;

 if ((hw->phy.media_type == ixgbe_media_type_copper) ||
     (hw->phy.multispeed_fiber)) {




  if (ecmd->autoneg == AUTONEG_DISABLE)
   return -EINVAL;

  if (ecmd->advertising & ~ecmd->supported)
   return -EINVAL;

  old = hw->phy.autoneg_advertised;
  advertised = 0;
  if (ecmd->advertising & ADVERTISED_10000baseT_Full)
   advertised |= IXGBE_LINK_SPEED_10GB_FULL;

  if (ecmd->advertising & ADVERTISED_1000baseT_Full)
   advertised |= IXGBE_LINK_SPEED_1GB_FULL;

  if (ecmd->advertising & ADVERTISED_100baseT_Full)
   advertised |= IXGBE_LINK_SPEED_100_FULL;

  if (old == advertised)
   return err;

  hw->mac.autotry_restart = 1;
  err = hw->mac.ops.setup_link(hw, advertised, 1);
  if (err) {
   e_info(probe, "setup link failed with code %d\n", err);
   hw->mac.ops.setup_link(hw, old, 1);
  }
 } else {

  u32 speed = ethtool_cmd_speed(ecmd);
  if ((ecmd->autoneg == AUTONEG_ENABLE) ||
      (ecmd->advertising != ADVERTISED_10000baseT_Full) ||
      (speed + ecmd->duplex != SPEED_10000 + DUPLEX_FULL))
   return -EINVAL;
 }

 return err;
}
