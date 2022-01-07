
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {struct macvlan_port* macvlan_port; } ;
struct macvlan_port {int dummy; } ;


 int kfree (struct macvlan_port*) ;
 int rcu_assign_pointer (struct macvlan_port*,int *) ;
 int synchronize_rcu () ;

__attribute__((used)) static void macvlan_port_destroy(struct net_device *dev)
{
 struct macvlan_port *port = dev->macvlan_port;

 rcu_assign_pointer(dev->macvlan_port, ((void*)0));
 synchronize_rcu();
 kfree(port);
}
