
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmxnet3_adapter {int netdev; int work; int tx_timeout_count; } ;
struct net_device {int dummy; } ;


 int netdev_err (int ,char*) ;
 struct vmxnet3_adapter* netdev_priv (struct net_device*) ;
 int netif_wake_queue (int ) ;
 int schedule_work (int *) ;

__attribute__((used)) static void
vmxnet3_tx_timeout(struct net_device *netdev)
{
 struct vmxnet3_adapter *adapter = netdev_priv(netdev);
 adapter->tx_timeout_count++;

 netdev_err(adapter->netdev, "tx hang\n");
 schedule_work(&adapter->work);
 netif_wake_queue(adapter->netdev);
}
