
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_info {int link_fault; } ;
struct net_device {int dummy; } ;
struct adapter {int work_lock; struct net_device** port; } ;


 struct port_info* netdev_priv (struct net_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void t3_os_link_fault_handler(struct adapter *adapter, int port_id)
{
 struct net_device *netdev = adapter->port[port_id];
 struct port_info *pi = netdev_priv(netdev);

 spin_lock(&adapter->work_lock);
 pi->link_fault = 1;
 spin_unlock(&adapter->work_lock);
}
