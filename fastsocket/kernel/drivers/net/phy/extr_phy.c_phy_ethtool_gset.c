
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int autoneg; int addr; int duplex; int speed; int advertising; int supported; } ;
struct ethtool_cmd {int autoneg; int transceiver; int phy_address; int port; int duplex; int speed; int advertising; int supported; } ;


 int PORT_MII ;
 int XCVR_EXTERNAL ;

int phy_ethtool_gset(struct phy_device *phydev, struct ethtool_cmd *cmd)
{
 cmd->supported = phydev->supported;

 cmd->advertising = phydev->advertising;

 cmd->speed = phydev->speed;
 cmd->duplex = phydev->duplex;
 cmd->port = PORT_MII;
 cmd->phy_address = phydev->addr;
 cmd->transceiver = XCVR_EXTERNAL;
 cmd->autoneg = phydev->autoneg;

 return 0;
}
