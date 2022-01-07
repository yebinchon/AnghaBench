
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_cmd {int supported; int advertising; int maxtxpkt; int maxrxpkt; int autoneg; int transceiver; scalar_t__ phy_address; int port; int duplex; int speed; } ;
struct catc {int is_f5u011; } ;


 int ADVERTISED_10baseT_Half ;
 int ADVERTISED_TP ;
 int AUTONEG_DISABLE ;
 int DUPLEX_HALF ;
 int EOPNOTSUPP ;
 int PORT_TP ;
 int SPEED_10 ;
 int SUPPORTED_10baseT_Half ;
 int SUPPORTED_TP ;
 int XCVR_INTERNAL ;
 struct catc* netdev_priv (struct net_device*) ;

__attribute__((used)) static int catc_get_settings(struct net_device *dev, struct ethtool_cmd *cmd)
{
 struct catc *catc = netdev_priv(dev);
 if (!catc->is_f5u011)
  return -EOPNOTSUPP;

 cmd->supported = SUPPORTED_10baseT_Half | SUPPORTED_TP;
 cmd->advertising = ADVERTISED_10baseT_Half | ADVERTISED_TP;
 cmd->speed = SPEED_10;
 cmd->duplex = DUPLEX_HALF;
 cmd->port = PORT_TP;
 cmd->phy_address = 0;
 cmd->transceiver = XCVR_INTERNAL;
 cmd->autoneg = AUTONEG_DISABLE;
 cmd->maxtxpkt = 1;
 cmd->maxrxpkt = 1;
 return 0;
}
