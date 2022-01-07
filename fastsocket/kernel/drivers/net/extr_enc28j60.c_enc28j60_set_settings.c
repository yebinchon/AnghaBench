
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_cmd {int duplex; int speed; int autoneg; } ;


 int enc28j60_setlink (struct net_device*,int ,int ,int ) ;

__attribute__((used)) static int
enc28j60_set_settings(struct net_device *dev, struct ethtool_cmd *cmd)
{
 return enc28j60_setlink(dev, cmd->autoneg, cmd->speed, cmd->duplex);
}
