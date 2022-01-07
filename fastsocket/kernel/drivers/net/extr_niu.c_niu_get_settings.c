
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct niu_link_config {int active_duplex; int active_speed; int active_autoneg; int active_advertising; int supported; } ;
struct niu {int flags; int phy_addr; struct niu_link_config link_config; } ;
struct net_device {int dummy; } ;
struct ethtool_cmd {int transceiver; int port; int duplex; int speed; int autoneg; int advertising; int supported; int phy_address; } ;


 int NIU_FLAGS_FIBER ;
 int NIU_FLAGS_XCVR_SERDES ;
 int PORT_FIBRE ;
 int PORT_TP ;
 int XCVR_EXTERNAL ;
 int XCVR_INTERNAL ;
 int memset (struct ethtool_cmd*,int ,int) ;
 struct niu* netdev_priv (struct net_device*) ;

__attribute__((used)) static int niu_get_settings(struct net_device *dev, struct ethtool_cmd *cmd)
{
 struct niu *np = netdev_priv(dev);
 struct niu_link_config *lp;

 lp = &np->link_config;

 memset(cmd, 0, sizeof(*cmd));
 cmd->phy_address = np->phy_addr;
 cmd->supported = lp->supported;
 cmd->advertising = lp->active_advertising;
 cmd->autoneg = lp->active_autoneg;
 cmd->speed = lp->active_speed;
 cmd->duplex = lp->active_duplex;
 cmd->port = (np->flags & NIU_FLAGS_FIBER) ? PORT_FIBRE : PORT_TP;
 cmd->transceiver = (np->flags & NIU_FLAGS_XCVR_SERDES) ?
  XCVR_EXTERNAL : XCVR_INTERNAL;

 return 0;
}
