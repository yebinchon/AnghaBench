
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pch_gbe_tx_ring {int dummy; } ;
struct pch_gbe_rx_ring {int count; } ;
struct TYPE_4__ {int addr; } ;
struct TYPE_5__ {TYPE_1__ mac; } ;
struct pch_gbe_adapter {struct net_device* netdev; int napi; int watchdog_timer; TYPE_2__ hw; int tx_queue_len; struct pch_gbe_rx_ring* rx_ring; struct pch_gbe_tx_ring* tx_ring; } ;
struct net_device {int tx_queue_len; } ;


 int EINVAL ;
 int is_valid_ether_addr (int ) ;
 int jiffies ;
 int mod_timer (int *,int ) ;
 int napi_enable (int *) ;
 int netif_start_queue (struct net_device*) ;
 int pch_gbe_alloc_rx_buffers (struct pch_gbe_adapter*,struct pch_gbe_rx_ring*,int ) ;
 int pch_gbe_alloc_rx_buffers_pool (struct pch_gbe_adapter*,struct pch_gbe_rx_ring*,int ) ;
 int pch_gbe_alloc_tx_buffers (struct pch_gbe_adapter*,struct pch_gbe_tx_ring*) ;
 int pch_gbe_configure_rx (struct pch_gbe_adapter*) ;
 int pch_gbe_configure_tx (struct pch_gbe_adapter*) ;
 int pch_gbe_enable_dma_rx (TYPE_2__*) ;
 int pch_gbe_enable_mac_rx (TYPE_2__*) ;
 int pch_gbe_irq_enable (struct pch_gbe_adapter*) ;
 int pch_gbe_request_irq (struct pch_gbe_adapter*) ;
 int pch_gbe_set_multi (struct net_device*) ;
 int pch_gbe_setup_rctl (struct pch_gbe_adapter*) ;
 int pch_gbe_setup_tctl (struct pch_gbe_adapter*) ;
 int pr_err (char*) ;

int pch_gbe_up(struct pch_gbe_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;
 struct pch_gbe_tx_ring *tx_ring = adapter->tx_ring;
 struct pch_gbe_rx_ring *rx_ring = adapter->rx_ring;
 int err;


 if (!is_valid_ether_addr(adapter->hw.mac.addr)) {
  pr_err("Error: Invalid MAC address\n");
  return -EINVAL;
 }


 pch_gbe_set_multi(netdev);

 pch_gbe_setup_tctl(adapter);
 pch_gbe_configure_tx(adapter);
 pch_gbe_setup_rctl(adapter);
 pch_gbe_configure_rx(adapter);

 err = pch_gbe_request_irq(adapter);
 if (err) {
  pr_err("Error: can't bring device up\n");
  return err;
 }
 err = pch_gbe_alloc_rx_buffers_pool(adapter, rx_ring, rx_ring->count);
 if (err) {
  pr_err("Error: can't bring device up\n");
  return err;
 }
 pch_gbe_alloc_tx_buffers(adapter, tx_ring);
 pch_gbe_alloc_rx_buffers(adapter, rx_ring, rx_ring->count);
 adapter->tx_queue_len = netdev->tx_queue_len;
 pch_gbe_enable_dma_rx(&adapter->hw);
 pch_gbe_enable_mac_rx(&adapter->hw);

 mod_timer(&adapter->watchdog_timer, jiffies);

 napi_enable(&adapter->napi);
 pch_gbe_irq_enable(adapter);
 netif_start_queue(adapter->netdev);

 return 0;
}
