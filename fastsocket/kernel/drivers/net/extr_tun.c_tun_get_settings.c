
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_cmd {scalar_t__ maxrxpkt; scalar_t__ maxtxpkt; int autoneg; int transceiver; scalar_t__ phy_address; int port; int duplex; int speed; scalar_t__ advertising; scalar_t__ supported; } ;


 int AUTONEG_DISABLE ;
 int DUPLEX_FULL ;
 int PORT_TP ;
 int SPEED_10 ;
 int XCVR_INTERNAL ;

__attribute__((used)) static int tun_get_settings(struct net_device *dev, struct ethtool_cmd *cmd)
{
 cmd->supported = 0;
 cmd->advertising = 0;
 cmd->speed = SPEED_10;
 cmd->duplex = DUPLEX_FULL;
 cmd->port = PORT_TP;
 cmd->phy_address = 0;
 cmd->transceiver = XCVR_INTERNAL;
 cmd->autoneg = AUTONEG_DISABLE;
 cmd->maxtxpkt = 0;
 cmd->maxrxpkt = 0;
 return 0;
}
