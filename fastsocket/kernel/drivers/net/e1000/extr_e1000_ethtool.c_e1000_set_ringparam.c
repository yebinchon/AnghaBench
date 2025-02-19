
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ethtool_ringparam {int tx_pending; int rx_pending; scalar_t__ rx_jumbo_pending; scalar_t__ rx_mini_pending; } ;
struct e1000_tx_ring {void* count; } ;
struct e1000_rx_ring {void* count; } ;
struct e1000_hw {scalar_t__ mac_type; } ;
struct e1000_adapter {int num_tx_queues; int num_rx_queues; int flags; struct e1000_tx_ring* tx_ring; struct e1000_tx_ring* rx_ring; int netdev; struct e1000_hw hw; } ;
typedef scalar_t__ e1000_mac_type ;


 void* ALIGN (void*,int ) ;
 scalar_t__ E1000_MAX_82544_RXD ;
 scalar_t__ E1000_MAX_82544_TXD ;
 scalar_t__ E1000_MAX_RXD ;
 scalar_t__ E1000_MAX_TXD ;
 scalar_t__ E1000_MIN_RXD ;
 scalar_t__ E1000_MIN_TXD ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int REQ_RX_DESCRIPTOR_MULTIPLE ;
 int REQ_TX_DESCRIPTOR_MULTIPLE ;
 int __E1000_RESETTING ;
 int clear_bit (int ,int *) ;
 scalar_t__ e1000_82544 ;
 int e1000_down (struct e1000_adapter*) ;
 int e1000_free_all_rx_resources (struct e1000_adapter*) ;
 int e1000_free_all_tx_resources (struct e1000_adapter*) ;
 int e1000_setup_all_rx_resources (struct e1000_adapter*) ;
 int e1000_setup_all_tx_resources (struct e1000_adapter*) ;
 int e1000_up (struct e1000_adapter*) ;
 struct e1000_tx_ring* kcalloc (int,int,int ) ;
 int kfree (struct e1000_tx_ring*) ;
 void* max (int ,int ) ;
 void* min (void*,int ) ;
 int msleep (int) ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (int ) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static int e1000_set_ringparam(struct net_device *netdev,
          struct ethtool_ringparam *ring)
{
 struct e1000_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;
 e1000_mac_type mac_type = hw->mac_type;
 struct e1000_tx_ring *txdr, *tx_old;
 struct e1000_rx_ring *rxdr, *rx_old;
 int i, err;

 if ((ring->rx_mini_pending) || (ring->rx_jumbo_pending))
  return -EINVAL;

 while (test_and_set_bit(__E1000_RESETTING, &adapter->flags))
  msleep(1);

 if (netif_running(adapter->netdev))
  e1000_down(adapter);

 tx_old = adapter->tx_ring;
 rx_old = adapter->rx_ring;

 err = -ENOMEM;
 txdr = kcalloc(adapter->num_tx_queues, sizeof(struct e1000_tx_ring), GFP_KERNEL);
 if (!txdr)
  goto err_alloc_tx;

 rxdr = kcalloc(adapter->num_rx_queues, sizeof(struct e1000_rx_ring), GFP_KERNEL);
 if (!rxdr)
  goto err_alloc_rx;

 adapter->tx_ring = txdr;
 adapter->rx_ring = rxdr;

 rxdr->count = max(ring->rx_pending,(u32)E1000_MIN_RXD);
 rxdr->count = min(rxdr->count,(u32)(mac_type < e1000_82544 ?
  E1000_MAX_RXD : E1000_MAX_82544_RXD));
 rxdr->count = ALIGN(rxdr->count, REQ_RX_DESCRIPTOR_MULTIPLE);

 txdr->count = max(ring->tx_pending,(u32)E1000_MIN_TXD);
 txdr->count = min(txdr->count,(u32)(mac_type < e1000_82544 ?
  E1000_MAX_TXD : E1000_MAX_82544_TXD));
 txdr->count = ALIGN(txdr->count, REQ_TX_DESCRIPTOR_MULTIPLE);

 for (i = 0; i < adapter->num_tx_queues; i++)
  txdr[i].count = txdr->count;
 for (i = 0; i < adapter->num_rx_queues; i++)
  rxdr[i].count = rxdr->count;

 if (netif_running(adapter->netdev)) {

  err = e1000_setup_all_rx_resources(adapter);
  if (err)
   goto err_setup_rx;
  err = e1000_setup_all_tx_resources(adapter);
  if (err)
   goto err_setup_tx;




  adapter->rx_ring = rx_old;
  adapter->tx_ring = tx_old;
  e1000_free_all_rx_resources(adapter);
  e1000_free_all_tx_resources(adapter);
  kfree(tx_old);
  kfree(rx_old);
  adapter->rx_ring = rxdr;
  adapter->tx_ring = txdr;
  err = e1000_up(adapter);
  if (err)
   goto err_setup;
 }

 clear_bit(__E1000_RESETTING, &adapter->flags);
 return 0;
err_setup_tx:
 e1000_free_all_rx_resources(adapter);
err_setup_rx:
 adapter->rx_ring = rx_old;
 adapter->tx_ring = tx_old;
 kfree(rxdr);
err_alloc_rx:
 kfree(txdr);
err_alloc_tx:
 e1000_up(adapter);
err_setup:
 clear_bit(__E1000_RESETTING, &adapter->flags);
 return err;
}
