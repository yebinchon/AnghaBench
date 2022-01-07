
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct macvlan_port {int dev; int vlans; } ;
struct macvlan_dev {int list; struct macvlan_port* port; } ;


 int list_del_rcu (int *) ;
 scalar_t__ list_empty (int *) ;
 int macvlan_port_destroy (int ) ;
 struct macvlan_dev* netdev_priv (struct net_device*) ;
 int unregister_netdevice (struct net_device*) ;

void macvlan_dellink(struct net_device *dev)
{
 struct macvlan_dev *vlan = netdev_priv(dev);
 struct macvlan_port *port = vlan->port;

 list_del_rcu(&vlan->list);
 unregister_netdevice(dev);

 if (list_empty(&port->vlans))
  macvlan_port_destroy(port->dev);
}
