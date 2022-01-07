
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_ring {unsigned long last_rx_timestamp; } ;
struct ixgbe_hw {int dummy; } ;
struct ixgbe_adapter {unsigned long last_rx_ptp_check; int num_rx_queues; struct ixgbe_ring** rx_ring; struct ixgbe_hw hw; } ;


 int HZ ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_RXSTMPH ;
 int IXGBE_TSYNCRXCTL ;
 int IXGBE_TSYNCRXCTL_VALID ;
 int drv ;
 int e_warn (int ,char*) ;
 void* jiffies ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 scalar_t__ time_is_before_jiffies (unsigned long) ;

void ixgbe_ptp_rx_hang(struct ixgbe_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 struct ixgbe_ring *rx_ring;
 u32 tsyncrxctl = IXGBE_READ_REG(hw, IXGBE_TSYNCRXCTL);
 unsigned long rx_event;
 int n;




 if (!(tsyncrxctl & IXGBE_TSYNCRXCTL_VALID)) {
  adapter->last_rx_ptp_check = jiffies;
  return;
 }


 rx_event = adapter->last_rx_ptp_check;
 for (n = 0; n < adapter->num_rx_queues; n++) {
  rx_ring = adapter->rx_ring[n];
  if (time_after(rx_ring->last_rx_timestamp, rx_event))
   rx_event = rx_ring->last_rx_timestamp;
 }


 if (time_is_before_jiffies(rx_event + 5*HZ)) {
  IXGBE_READ_REG(hw, IXGBE_RXSTMPH);
  adapter->last_rx_ptp_check = jiffies;

  e_warn(drv, "clearing RX Timestamp hang");
 }
}
