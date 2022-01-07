
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ethtool_cmd {scalar_t__ phy_address; int duplex; int speed; int autoneg; int advertising; int transceiver; int port; int supported; } ;
struct TYPE_2__ {scalar_t__ address; int duplex; int speed; int autoneg; int advertising; int features; } ;
struct emac_instance {int link_lock; TYPE_1__ phy; } ;


 int PORT_MII ;
 int XCVR_EXTERNAL ;
 int XCVR_INTERNAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct emac_instance* netdev_priv (struct net_device*) ;

__attribute__((used)) static int emac_ethtool_get_settings(struct net_device *ndev,
         struct ethtool_cmd *cmd)
{
 struct emac_instance *dev = netdev_priv(ndev);

 cmd->supported = dev->phy.features;
 cmd->port = PORT_MII;
 cmd->phy_address = dev->phy.address;
 cmd->transceiver =
     dev->phy.address >= 0 ? XCVR_EXTERNAL : XCVR_INTERNAL;

 mutex_lock(&dev->link_lock);
 cmd->advertising = dev->phy.advertising;
 cmd->autoneg = dev->phy.autoneg;
 cmd->speed = dev->phy.speed;
 cmd->duplex = dev->phy.duplex;
 mutex_unlock(&dev->link_lock);

 return 0;
}
