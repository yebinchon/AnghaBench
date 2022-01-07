
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct ethtool_cmd {scalar_t__ autoneg; int speed; int duplex; } ;
struct ehea_port {int full_duplex; int port_speed; TYPE_1__* netdev; } ;
struct TYPE_2__ {int name; } ;


 scalar_t__ AUTONEG_ENABLE ;
 int DUPLEX_FULL ;
 int EHEA_SPEED_AUTONEG ;
 int EINVAL ;
 int H_SPEED_100M_F ;
 int H_SPEED_100M_H ;
 int H_SPEED_10G_F ;
 int H_SPEED_10M_F ;
 int H_SPEED_10M_H ;
 int H_SPEED_1G_F ;




 int ehea_info (char*,int ,int ,char*) ;
 int ehea_set_portspeed (struct ehea_port*,int ) ;
 struct ehea_port* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ehea_set_settings(struct net_device *dev, struct ethtool_cmd *cmd)
{
 struct ehea_port *port = netdev_priv(dev);
 int ret = 0;
 u32 sp;

 if (cmd->autoneg == AUTONEG_ENABLE) {
  sp = EHEA_SPEED_AUTONEG;
  goto doit;
 }

 switch (cmd->speed) {
 case 131:
  if (cmd->duplex == DUPLEX_FULL)
   sp = H_SPEED_10M_F;
  else
   sp = H_SPEED_10M_H;
  break;

 case 130:
  if (cmd->duplex == DUPLEX_FULL)
   sp = H_SPEED_100M_F;
  else
   sp = H_SPEED_100M_H;
  break;

 case 129:
  if (cmd->duplex == DUPLEX_FULL)
   sp = H_SPEED_1G_F;
  else
   ret = -EINVAL;
  break;

 case 128:
  if (cmd->duplex == DUPLEX_FULL)
   sp = H_SPEED_10G_F;
  else
   ret = -EINVAL;
  break;

 default:
   ret = -EINVAL;
  break;
 }

 if (ret)
  goto out;
doit:
 ret = ehea_set_portspeed(port, sp);

 if (!ret)
  ehea_info("%s: Port speed succesfully set: %dMbps "
     "%s Duplex",
     port->netdev->name, port->port_speed,
     port->full_duplex == 1 ? "Full" : "Half");
out:
 return ret;
}
