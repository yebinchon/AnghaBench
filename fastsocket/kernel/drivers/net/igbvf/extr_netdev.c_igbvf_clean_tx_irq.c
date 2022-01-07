
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int status; } ;
union e1000_adv_tx_desc {TYPE_1__ wb; } ;
struct sk_buff {unsigned int len; } ;
struct net_device {int dummy; } ;
struct igbvf_ring {unsigned int next_to_clean; unsigned int count; struct igbvf_buffer* buffer_info; struct igbvf_adapter* adapter; } ;
struct igbvf_buffer {union e1000_adv_tx_desc* next_to_watch; struct sk_buff* skb; } ;
struct TYPE_5__ {unsigned int tx_bytes; unsigned int tx_packets; } ;
struct igbvf_adapter {TYPE_2__ net_stats; int restart_queue; int state; struct net_device* netdev; } ;
struct TYPE_6__ {scalar_t__ gso_segs; } ;


 int E1000_TXD_STAT_DD ;
 union e1000_adv_tx_desc* IGBVF_TX_DESC_ADV (struct igbvf_ring,unsigned int) ;
 scalar_t__ IGBVF_TX_QUEUE_WAKE ;
 int __IGBVF_DOWN ;
 int cpu_to_le32 (int ) ;
 scalar_t__ igbvf_desc_unused (struct igbvf_ring*) ;
 int igbvf_put_txbuf (struct igbvf_adapter*,struct igbvf_buffer*) ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;
 scalar_t__ netif_queue_stopped (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int read_barrier_depends () ;
 unsigned int skb_headlen (struct sk_buff*) ;
 TYPE_3__* skb_shinfo (struct sk_buff*) ;
 int smp_mb () ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool igbvf_clean_tx_irq(struct igbvf_ring *tx_ring)
{
 struct igbvf_adapter *adapter = tx_ring->adapter;
 struct net_device *netdev = adapter->netdev;
 struct igbvf_buffer *buffer_info;
 struct sk_buff *skb;
 union e1000_adv_tx_desc *tx_desc, *eop_desc;
 unsigned int total_bytes = 0, total_packets = 0;
 unsigned int i, count = 0;
 bool cleaned = 0;

 i = tx_ring->next_to_clean;
 buffer_info = &tx_ring->buffer_info[i];
 eop_desc = buffer_info->next_to_watch;

 do {

  if (!eop_desc)
   break;


  read_barrier_depends();


  if (!(eop_desc->wb.status & cpu_to_le32(E1000_TXD_STAT_DD)))
   break;


  buffer_info->next_to_watch = ((void*)0);

  for (cleaned = 0; !cleaned; count++) {
   tx_desc = IGBVF_TX_DESC_ADV(*tx_ring, i);
   cleaned = (tx_desc == eop_desc);
   skb = buffer_info->skb;

   if (skb) {
    unsigned int segs, bytecount;


    segs = skb_shinfo(skb)->gso_segs ?: 1;

    bytecount = ((segs - 1) * skb_headlen(skb)) +
                skb->len;
    total_packets += segs;
    total_bytes += bytecount;
   }

   igbvf_put_txbuf(adapter, buffer_info);
   tx_desc->wb.status = 0;

   i++;
   if (i == tx_ring->count)
    i = 0;

   buffer_info = &tx_ring->buffer_info[i];
  }

  eop_desc = buffer_info->next_to_watch;
 } while (count < tx_ring->count);

 tx_ring->next_to_clean = i;

 if (unlikely(count &&
              netif_carrier_ok(netdev) &&
              igbvf_desc_unused(tx_ring) >= IGBVF_TX_QUEUE_WAKE)) {



  smp_mb();
  if (netif_queue_stopped(netdev) &&
      !(test_bit(__IGBVF_DOWN, &adapter->state))) {
   netif_wake_queue(netdev);
   ++adapter->restart_queue;
  }
 }

 adapter->net_stats.tx_bytes += total_bytes;
 adapter->net_stats.tx_packets += total_packets;
 return count < tx_ring->count;
}
