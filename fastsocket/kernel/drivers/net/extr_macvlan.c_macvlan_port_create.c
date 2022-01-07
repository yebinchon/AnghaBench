
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ type; int flags; int macvlan_port; } ;
struct macvlan_port {int passthru; int * vlan_hash; int vlans; struct net_device* dev; } ;


 scalar_t__ ARPHRD_ETHER ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IFF_LOOPBACK ;
 int INIT_HLIST_HEAD (int *) ;
 int INIT_LIST_HEAD (int *) ;
 unsigned int MACVLAN_HASH_SIZE ;
 struct macvlan_port* kzalloc (int,int ) ;
 int rcu_assign_pointer (int ,struct macvlan_port*) ;

__attribute__((used)) static int macvlan_port_create(struct net_device *dev)
{
 struct macvlan_port *port;
 unsigned int i;

 if (dev->type != ARPHRD_ETHER || dev->flags & IFF_LOOPBACK)
  return -EINVAL;

 port = kzalloc(sizeof(*port), GFP_KERNEL);
 if (port == ((void*)0))
  return -ENOMEM;

 port->passthru = 0;
 port->dev = dev;
 INIT_LIST_HEAD(&port->vlans);
 for (i = 0; i < MACVLAN_HASH_SIZE; i++)
  INIT_HLIST_HEAD(&port->vlan_hash[i]);
 rcu_assign_pointer(dev->macvlan_port, port);
 return 0;
}
