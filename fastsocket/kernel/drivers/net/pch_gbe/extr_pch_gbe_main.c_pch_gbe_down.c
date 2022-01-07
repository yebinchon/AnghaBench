
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pch_gbe_rx_ring {int * rx_buff_pool; scalar_t__ rx_buff_pool_size; scalar_t__ rx_buff_pool_logic; } ;
struct pch_gbe_adapter {int pdev; struct pch_gbe_rx_ring* rx_ring; int tx_ring; int tx_queue_len; int watchdog_timer; int irq_sem; int napi; struct net_device* netdev; } ;
struct net_device {int tx_queue_len; } ;


 int atomic_set (int *,int ) ;
 int del_timer_sync (int *) ;
 int napi_disable (int *) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int pch_gbe_clean_rx_ring (struct pch_gbe_adapter*,struct pch_gbe_rx_ring*) ;
 int pch_gbe_clean_tx_ring (struct pch_gbe_adapter*,int ) ;
 int pch_gbe_free_irq (struct pch_gbe_adapter*) ;
 int pch_gbe_irq_disable (struct pch_gbe_adapter*) ;
 int pch_gbe_reset (struct pch_gbe_adapter*) ;
 int pci_free_consistent (int ,scalar_t__,int *,scalar_t__) ;

void pch_gbe_down(struct pch_gbe_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;
 struct pch_gbe_rx_ring *rx_ring = adapter->rx_ring;



 napi_disable(&adapter->napi);
 atomic_set(&adapter->irq_sem, 0);

 pch_gbe_irq_disable(adapter);
 pch_gbe_free_irq(adapter);

 del_timer_sync(&adapter->watchdog_timer);

 netdev->tx_queue_len = adapter->tx_queue_len;
 netif_carrier_off(netdev);
 netif_stop_queue(netdev);

 pch_gbe_reset(adapter);
 pch_gbe_clean_tx_ring(adapter, adapter->tx_ring);
 pch_gbe_clean_rx_ring(adapter, adapter->rx_ring);

 pci_free_consistent(adapter->pdev, rx_ring->rx_buff_pool_size,
       rx_ring->rx_buff_pool, rx_ring->rx_buff_pool_logic);
 rx_ring->rx_buff_pool_logic = 0;
 rx_ring->rx_buff_pool_size = 0;
 rx_ring->rx_buff_pool = ((void*)0);
}
