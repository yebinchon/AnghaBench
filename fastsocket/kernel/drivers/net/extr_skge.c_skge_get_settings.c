
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skge_port {int duplex; int speed; int autoneg; int advertising; struct skge_hw* hw; } ;
struct skge_hw {int phy_addr; scalar_t__ copper; } ;
struct net_device {int dummy; } ;
struct ethtool_cmd {int duplex; int speed; int autoneg; int advertising; int port; int phy_address; int supported; int transceiver; } ;


 int PORT_FIBRE ;
 int PORT_TP ;
 int XCVR_INTERNAL ;
 struct skge_port* netdev_priv (struct net_device*) ;
 int skge_supported_modes (struct skge_hw*) ;

__attribute__((used)) static int skge_get_settings(struct net_device *dev,
        struct ethtool_cmd *ecmd)
{
 struct skge_port *skge = netdev_priv(dev);
 struct skge_hw *hw = skge->hw;

 ecmd->transceiver = XCVR_INTERNAL;
 ecmd->supported = skge_supported_modes(hw);

 if (hw->copper) {
  ecmd->port = PORT_TP;
  ecmd->phy_address = hw->phy_addr;
 } else
  ecmd->port = PORT_FIBRE;

 ecmd->advertising = skge->advertising;
 ecmd->autoneg = skge->autoneg;
 ecmd->speed = skge->speed;
 ecmd->duplex = skge->duplex;
 return 0;
}
