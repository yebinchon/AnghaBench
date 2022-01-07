
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmxnet3_adapter {int num_tx_queues; int shared_pa; int shared; int pdev; int queue_desc_pa; int tqd_start; int pm_conf; int rss_conf; int work; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct Vmxnet3_TxQueueDesc {int dummy; } ;
struct Vmxnet3_RxQueueDesc {int dummy; } ;
struct Vmxnet3_DriverShared {int dummy; } ;


 int VMXNET3_DEVICE_MAX_RX_QUEUES ;
 int cancel_work_sync (int *) ;
 scalar_t__ enable_mq ;
 int free_netdev (struct net_device*) ;
 int kfree (int ) ;
 int min (int ,int) ;
 struct vmxnet3_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ num_online_cpus () ;
 int pci_free_consistent (int ,int,int ,int ) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int rounddown_pow_of_two (int) ;
 int unregister_netdev (struct net_device*) ;
 int vmxnet3_free_intr_resources (struct vmxnet3_adapter*) ;
 int vmxnet3_free_pci_resources (struct vmxnet3_adapter*) ;

__attribute__((used)) static void
vmxnet3_remove_device(struct pci_dev *pdev)
{
 struct net_device *netdev = pci_get_drvdata(pdev);
 struct vmxnet3_adapter *adapter = netdev_priv(netdev);
 int size = 0;
 int num_rx_queues;







  num_rx_queues = 1;
 num_rx_queues = rounddown_pow_of_two(num_rx_queues);

 cancel_work_sync(&adapter->work);

 unregister_netdev(netdev);

 vmxnet3_free_intr_resources(adapter);
 vmxnet3_free_pci_resources(adapter);



 kfree(adapter->pm_conf);

 size = sizeof(struct Vmxnet3_TxQueueDesc) * adapter->num_tx_queues;
 size += sizeof(struct Vmxnet3_RxQueueDesc) * num_rx_queues;
 pci_free_consistent(adapter->pdev, size, adapter->tqd_start,
       adapter->queue_desc_pa);
 pci_free_consistent(adapter->pdev, sizeof(struct Vmxnet3_DriverShared),
       adapter->shared, adapter->shared_pa);
 free_netdev(netdev);
}
