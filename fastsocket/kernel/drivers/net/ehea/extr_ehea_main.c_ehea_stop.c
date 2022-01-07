
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; } ;
struct ehea_port {int flags; int port_lock; int stats_work; int reset_task; } ;


 int __EHEA_DISABLE_PORT_RESET ;
 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int clear_bit (int ,int *) ;
 int ehea_down (struct net_device*) ;
 int ehea_info (char*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ehea_port* netdev_priv (struct net_device*) ;
 scalar_t__ netif_msg_ifdown (struct ehea_port*) ;
 int netif_tx_stop_all_queues (struct net_device*) ;
 int port_napi_disable (struct ehea_port*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int ehea_stop(struct net_device *dev)
{
 int ret;
 struct ehea_port *port = netdev_priv(dev);

 if (netif_msg_ifdown(port))
  ehea_info("disabling port %s", dev->name);

 set_bit(__EHEA_DISABLE_PORT_RESET, &port->flags);
 cancel_work_sync(&port->reset_task);
 cancel_delayed_work_sync(&port->stats_work);
 mutex_lock(&port->port_lock);
 netif_tx_stop_all_queues(dev);
 port_napi_disable(port);
 ret = ehea_down(dev);
 mutex_unlock(&port->port_lock);
 clear_bit(__EHEA_DISABLE_PORT_RESET, &port->flags);
 return ret;
}
