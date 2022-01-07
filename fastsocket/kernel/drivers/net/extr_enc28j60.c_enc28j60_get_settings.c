
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_cmd {int supported; int autoneg; int port; int duplex; int speed; int transceiver; } ;
struct enc28j60_net {scalar_t__ full_duplex; } ;


 int AUTONEG_DISABLE ;
 int DUPLEX_FULL ;
 int DUPLEX_HALF ;
 int PORT_TP ;
 int SPEED_10 ;
 int SUPPORTED_10baseT_Full ;
 int SUPPORTED_10baseT_Half ;
 int SUPPORTED_TP ;
 int XCVR_INTERNAL ;
 struct enc28j60_net* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
enc28j60_get_settings(struct net_device *dev, struct ethtool_cmd *cmd)
{
 struct enc28j60_net *priv = netdev_priv(dev);

 cmd->transceiver = XCVR_INTERNAL;
 cmd->supported = SUPPORTED_10baseT_Half
   | SUPPORTED_10baseT_Full
   | SUPPORTED_TP;
 cmd->speed = SPEED_10;
 cmd->duplex = priv->full_duplex ? DUPLEX_FULL : DUPLEX_HALF;
 cmd->port = PORT_TP;
 cmd->autoneg = AUTONEG_DISABLE;

 return 0;
}
