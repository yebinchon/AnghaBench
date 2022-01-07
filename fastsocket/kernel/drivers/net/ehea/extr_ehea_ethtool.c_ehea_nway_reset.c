
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ehea_port {int full_duplex; int port_speed; TYPE_1__* netdev; } ;
struct TYPE_2__ {int name; } ;


 int EHEA_SPEED_AUTONEG ;
 int ehea_info (char*,int ,int ,char*) ;
 int ehea_set_portspeed (struct ehea_port*,int ) ;
 struct ehea_port* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ehea_nway_reset(struct net_device *dev)
{
 struct ehea_port *port = netdev_priv(dev);
 int ret;

 ret = ehea_set_portspeed(port, EHEA_SPEED_AUTONEG);

 if (!ret)
  ehea_info("%s: Port speed succesfully set: %dMbps "
     "%s Duplex",
     port->netdev->name, port->port_speed,
     port->full_duplex == 1 ? "Full" : "Half");
 return ret;
}
