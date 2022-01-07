
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port {int phydev; } ;
struct net_device {int dummy; } ;
struct ethtool_cmd {int dummy; } ;


 struct port* netdev_priv (struct net_device*) ;
 int phy_ethtool_gset (int ,struct ethtool_cmd*) ;

__attribute__((used)) static int ixp4xx_get_settings(struct net_device *dev, struct ethtool_cmd *cmd)
{
 struct port *port = netdev_priv(dev);
 return phy_ethtool_gset(port->phydev, cmd);
}
