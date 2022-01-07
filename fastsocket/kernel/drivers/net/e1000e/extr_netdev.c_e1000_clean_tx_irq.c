
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned int tx_bytes; unsigned int tx_packets; } ;
struct net_device {TYPE_2__ stats; } ;
struct TYPE_3__ {int data; } ;
struct e1000_tx_desc {TYPE_1__ upper; } ;
struct e1000_ring {unsigned int next_to_clean; unsigned int count; unsigned int next_to_use; struct e1000_buffer* buffer_info; struct e1000_adapter* adapter; } ;
struct e1000_hw {int dummy; } ;
struct e1000_buffer {unsigned int next_to_watch; scalar_t__ time_stamp; scalar_t__ bytecount; scalar_t__ segs; } ;
struct e1000_adapter {int detect_tx_hung; int tx_timeout_factor; int tx_hang_recheck; unsigned int total_tx_bytes; unsigned int total_tx_packets; int print_hang_task; int restart_queue; int state; struct e1000_hw hw; struct net_device* netdev; } ;


 int E1000_STATUS_TXOFF ;
 int E1000_TXD_STAT_DD ;
 struct e1000_tx_desc* E1000_TX_DESC (struct e1000_ring,unsigned int) ;
 int HZ ;
 int STATUS ;
 scalar_t__ TX_WAKE_THRESHOLD ;
 int __E1000_DOWN ;
 int cpu_to_le32 (int ) ;
 scalar_t__ e1000_desc_unused (struct e1000_ring*) ;
 int e1000_put_txbuf (struct e1000_ring*,struct e1000_buffer*) ;
 int er32 (int ) ;
 int jiffies ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;
 scalar_t__ netif_queue_stopped (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int rmb () ;
 int schedule_work (int *) ;
 int smp_mb () ;
 int test_bit (int ,int *) ;
 scalar_t__ time_after (int ,scalar_t__) ;

__attribute__((used)) static bool e1000_clean_tx_irq(struct e1000_ring *tx_ring)
{
 struct e1000_adapter *adapter = tx_ring->adapter;
 struct net_device *netdev = adapter->netdev;
 struct e1000_hw *hw = &adapter->hw;
 struct e1000_tx_desc *tx_desc, *eop_desc;
 struct e1000_buffer *buffer_info;
 unsigned int i, eop;
 unsigned int count = 0;
 unsigned int total_tx_bytes = 0, total_tx_packets = 0;

 i = tx_ring->next_to_clean;
 eop = tx_ring->buffer_info[i].next_to_watch;
 eop_desc = E1000_TX_DESC(*tx_ring, eop);

 while ((eop_desc->upper.data & cpu_to_le32(E1000_TXD_STAT_DD)) &&
        (count < tx_ring->count)) {
  bool cleaned = 0;
  rmb();
  for (; !cleaned; count++) {
   tx_desc = E1000_TX_DESC(*tx_ring, i);
   buffer_info = &tx_ring->buffer_info[i];
   cleaned = (i == eop);

   if (cleaned) {
    total_tx_packets += buffer_info->segs;
    total_tx_bytes += buffer_info->bytecount;
   }

   e1000_put_txbuf(tx_ring, buffer_info);
   tx_desc->upper.data = 0;

   i++;
   if (i == tx_ring->count)
    i = 0;
  }

  if (i == tx_ring->next_to_use)
   break;
  eop = tx_ring->buffer_info[i].next_to_watch;
  eop_desc = E1000_TX_DESC(*tx_ring, eop);
 }

 tx_ring->next_to_clean = i;


 if (count && netif_carrier_ok(netdev) &&
     e1000_desc_unused(tx_ring) >= 32) {



  smp_mb();

  if (netif_queue_stopped(netdev) &&
      !(test_bit(__E1000_DOWN, &adapter->state))) {
   netif_wake_queue(netdev);
   ++adapter->restart_queue;
  }
 }

 if (adapter->detect_tx_hung) {



  adapter->detect_tx_hung = 0;
  if (tx_ring->buffer_info[i].time_stamp &&
      time_after(jiffies, tx_ring->buffer_info[i].time_stamp
          + (adapter->tx_timeout_factor * HZ)) &&
      !(er32(STATUS) & E1000_STATUS_TXOFF))
   schedule_work(&adapter->print_hang_task);
  else
   adapter->tx_hang_recheck = 0;
 }
 adapter->total_tx_bytes += total_tx_bytes;
 adapter->total_tx_packets += total_tx_packets;
 netdev->stats.tx_bytes += total_tx_bytes;
 netdev->stats.tx_packets += total_tx_packets;
 return count < tx_ring->count;
}
