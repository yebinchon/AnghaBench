
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct atlx_adapter {int tx_timeout_task; } ;


 struct atlx_adapter* netdev_priv (struct net_device*) ;
 int schedule_work (int *) ;

__attribute__((used)) static void atlx_tx_timeout(struct net_device *netdev)
{
 struct atlx_adapter *adapter = netdev_priv(netdev);

 schedule_work(&adapter->tx_timeout_task);
}
