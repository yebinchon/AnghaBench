
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct net_device {int irq; } ;
struct ibmveth_adapter {scalar_t__ buffer_list_addr; int rx_no_buffer; TYPE_1__* vdev; int pool_config; int napi; } ;
struct TYPE_2__ {int unit_address; } ;


 long H_BUSY ;
 scalar_t__ H_IS_LONG_BUSY (long) ;
 long H_SUCCESS ;
 int VIO_IRQ_DISABLE ;
 int free_irq (int ,struct net_device*) ;
 long h_free_logical_lan (int ) ;
 int h_vio_signal (int ,int ) ;
 int ibmveth_cleanup (struct ibmveth_adapter*) ;
 int napi_disable (int *) ;
 int netdev_dbg (struct net_device*,char*) ;
 int netdev_err (struct net_device*,char*,long) ;
 struct ibmveth_adapter* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;

__attribute__((used)) static int ibmveth_close(struct net_device *netdev)
{
 struct ibmveth_adapter *adapter = netdev_priv(netdev);
 long lpar_rc;

 netdev_dbg(netdev, "close starting\n");

 napi_disable(&adapter->napi);

 if (!adapter->pool_config)
  netif_stop_queue(netdev);

 h_vio_signal(adapter->vdev->unit_address, VIO_IRQ_DISABLE);

 do {
  lpar_rc = h_free_logical_lan(adapter->vdev->unit_address);
 } while (H_IS_LONG_BUSY(lpar_rc) || (lpar_rc == H_BUSY));

 if (lpar_rc != H_SUCCESS) {
  netdev_err(netdev, "h_free_logical_lan failed with %lx, "
      "continuing with close\n", lpar_rc);
 }

 free_irq(netdev->irq, netdev);

 adapter->rx_no_buffer = *(u64 *)(((char *)adapter->buffer_list_addr) +
      4096 - 8);

 ibmveth_cleanup(adapter);

 netdev_dbg(netdev, "close complete\n");

 return 0;
}
