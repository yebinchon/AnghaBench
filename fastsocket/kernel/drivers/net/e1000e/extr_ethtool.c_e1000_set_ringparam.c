
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct net_device {int dummy; } ;
struct ethtool_ringparam {int tx_pending; int rx_pending; scalar_t__ rx_jumbo_pending; scalar_t__ rx_mini_pending; } ;
struct e1000_ring {scalar_t__ count; } ;
struct e1000_adapter {scalar_t__ tx_ring_count; scalar_t__ rx_ring_count; int state; struct e1000_ring* rx_ring; struct e1000_ring* tx_ring; int netdev; } ;


 scalar_t__ ALIGN (scalar_t__,int ) ;
 int E1000_MAX_RXD ;
 int E1000_MAX_TXD ;
 int E1000_MIN_RXD ;
 int E1000_MIN_TXD ;
 int EINVAL ;
 int ENOMEM ;
 int REQ_RX_DESCRIPTOR_MULTIPLE ;
 int REQ_TX_DESCRIPTOR_MULTIPLE ;
 int __E1000_RESETTING ;
 scalar_t__ clamp_t (int ,int ,int ,int ) ;
 int clear_bit (int ,int *) ;
 int e1000e_down (struct e1000_adapter*) ;
 int e1000e_free_rx_resources (struct e1000_ring*) ;
 int e1000e_free_tx_resources (struct e1000_ring*) ;
 int e1000e_setup_rx_resources (struct e1000_ring*) ;
 int e1000e_setup_tx_resources (struct e1000_ring*) ;
 int e1000e_up (struct e1000_adapter*) ;
 int memcpy (struct e1000_ring*,struct e1000_ring*,int) ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;
 int netif_running (int ) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int u32 ;
 int usleep_range (int,int) ;
 int vfree (struct e1000_ring*) ;
 struct e1000_ring* vmalloc (int) ;

__attribute__((used)) static int e1000_set_ringparam(struct net_device *netdev,
          struct ethtool_ringparam *ring)
{
 struct e1000_adapter *adapter = netdev_priv(netdev);
 struct e1000_ring *temp_tx = ((void*)0), *temp_rx = ((void*)0);
 int err = 0, size = sizeof(struct e1000_ring);
 bool set_tx = 0, set_rx = 0;
 u16 new_rx_count, new_tx_count;

 if ((ring->rx_mini_pending) || (ring->rx_jumbo_pending))
  return -EINVAL;

 new_rx_count = clamp_t(u32, ring->rx_pending, E1000_MIN_RXD,
          E1000_MAX_RXD);
 new_rx_count = ALIGN(new_rx_count, REQ_RX_DESCRIPTOR_MULTIPLE);

 new_tx_count = clamp_t(u32, ring->tx_pending, E1000_MIN_TXD,
          E1000_MAX_TXD);
 new_tx_count = ALIGN(new_tx_count, REQ_TX_DESCRIPTOR_MULTIPLE);

 if ((new_tx_count == adapter->tx_ring_count) &&
     (new_rx_count == adapter->rx_ring_count))

  return 0;

 while (test_and_set_bit(__E1000_RESETTING, &adapter->state))
  usleep_range(1000, 2000);

 if (!netif_running(adapter->netdev)) {

  adapter->tx_ring->count = new_tx_count;
  adapter->rx_ring->count = new_rx_count;
  adapter->tx_ring_count = new_tx_count;
  adapter->rx_ring_count = new_rx_count;
  goto clear_reset;
 }

 set_tx = (new_tx_count != adapter->tx_ring_count);
 set_rx = (new_rx_count != adapter->rx_ring_count);


 if (set_tx) {
  temp_tx = vmalloc(size);
  if (!temp_tx) {
   err = -ENOMEM;
   goto free_temp;
  }
 }
 if (set_rx) {
  temp_rx = vmalloc(size);
  if (!temp_rx) {
   err = -ENOMEM;
   goto free_temp;
  }
 }

 e1000e_down(adapter);





 if (set_tx) {
  memcpy(temp_tx, adapter->tx_ring, size);
  temp_tx->count = new_tx_count;
  err = e1000e_setup_tx_resources(temp_tx);
  if (err)
   goto err_setup;
 }
 if (set_rx) {
  memcpy(temp_rx, adapter->rx_ring, size);
  temp_rx->count = new_rx_count;
  err = e1000e_setup_rx_resources(temp_rx);
  if (err)
   goto err_setup_rx;
 }


 if (set_tx) {
  e1000e_free_tx_resources(adapter->tx_ring);
  memcpy(adapter->tx_ring, temp_tx, size);
  adapter->tx_ring_count = new_tx_count;
 }
 if (set_rx) {
  e1000e_free_rx_resources(adapter->rx_ring);
  memcpy(adapter->rx_ring, temp_rx, size);
  adapter->rx_ring_count = new_rx_count;
 }

err_setup_rx:
 if (err && set_tx)
  e1000e_free_tx_resources(temp_tx);
err_setup:
 e1000e_up(adapter);
free_temp:
 vfree(temp_tx);
 vfree(temp_rx);
clear_reset:
 clear_bit(__E1000_RESETTING, &adapter->state);
 return err;
}
