
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct nes_vnic {struct nes_device* nesdev; } ;
struct nes_device {size_t mac_index; struct nes_adapter* nesadapter; } ;
struct nes_adapter {scalar_t__* phy_type; int phy_lock; int * phy_index; scalar_t__ OneG_Mode; } ;
struct ethtool_cmd {scalar_t__ autoneg; } ;


 scalar_t__ NES_PHY_TYPE_PUMA_1G ;
 int nes_read_1G_phy_reg (struct nes_device*,int ,int ,int*) ;
 int nes_write_1G_phy_reg (struct nes_device*,int ,int ,int) ;
 struct nes_vnic* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int nes_netdev_set_settings(struct net_device *netdev, struct ethtool_cmd *et_cmd)
{
 struct nes_vnic *nesvnic = netdev_priv(netdev);
 struct nes_device *nesdev = nesvnic->nesdev;
 struct nes_adapter *nesadapter = nesdev->nesadapter;

 if ((nesadapter->OneG_Mode) &&
     (nesadapter->phy_type[nesdev->mac_index] != NES_PHY_TYPE_PUMA_1G)) {
  unsigned long flags;
  u16 phy_data;
  u8 phy_index = nesadapter->phy_index[nesdev->mac_index];

  spin_lock_irqsave(&nesadapter->phy_lock, flags);
  nes_read_1G_phy_reg(nesdev, 0, phy_index, &phy_data);
  if (et_cmd->autoneg) {

   phy_data |= 0x1300;
  } else {

   phy_data &= ~0x1000;
  }
  nes_write_1G_phy_reg(nesdev, 0, phy_index, phy_data);
  spin_unlock_irqrestore(&nesadapter->phy_lock, flags);
 }

 return 0;
}
