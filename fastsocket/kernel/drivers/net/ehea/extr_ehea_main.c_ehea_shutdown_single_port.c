
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehea_port {int netdev; int mc_list; int stats_work; int reset_task; struct ehea_adapter* adapter; } ;
struct ehea_adapter {int active_ports; } ;


 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int ehea_unregister_port (struct ehea_port*) ;
 int free_netdev (int ) ;
 int kfree (int ) ;
 int unregister_netdev (int ) ;

__attribute__((used)) static void ehea_shutdown_single_port(struct ehea_port *port)
{
 struct ehea_adapter *adapter = port->adapter;

 cancel_work_sync(&port->reset_task);
 cancel_delayed_work_sync(&port->stats_work);
 unregister_netdev(port->netdev);
 ehea_unregister_port(port);
 kfree(port->mc_list);
 free_netdev(port->netdev);
 adapter->active_ports--;
}
