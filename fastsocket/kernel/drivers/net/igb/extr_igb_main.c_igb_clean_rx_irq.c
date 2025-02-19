
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int vlan; } ;
struct TYPE_6__ {TYPE_1__ upper; } ;
union e1000_adv_rx_desc {TYPE_2__ wb; } ;
typedef scalar_t__ u16 ;
struct sk_buff {scalar_t__ len; } ;
struct TYPE_7__ {unsigned int packets; unsigned int bytes; } ;
struct igb_ring {TYPE_3__ rx_stats; struct sk_buff* skb; int flags; int next_to_clean; } ;
struct TYPE_8__ {unsigned int total_packets; unsigned int total_bytes; struct igb_ring* ring; } ;
struct igb_q_vector {TYPE_4__ rx; } ;


 int E1000_RXDEXT_STATERR_LB ;
 int E1000_RXD_STAT_DD ;
 int IGB_RING_FLAG_RX_LB_VLAN_BSWAP ;
 scalar_t__ IGB_RX_BUFFER_WRITE ;
 union e1000_adv_rx_desc* IGB_RX_DESC (struct igb_ring*,int ) ;
 scalar_t__ be16_to_cpu (int ) ;
 int igb_alloc_rx_buffers (struct igb_ring*,scalar_t__) ;
 scalar_t__ igb_cleanup_headers (struct igb_ring*,union e1000_adv_rx_desc*,struct sk_buff*) ;
 scalar_t__ igb_desc_unused (struct igb_ring*) ;
 struct sk_buff* igb_fetch_rx_buffer (struct igb_ring*,union e1000_adv_rx_desc*,struct sk_buff*) ;
 scalar_t__ igb_is_non_eop (struct igb_ring*,union e1000_adv_rx_desc*) ;
 int igb_process_skb_fields (struct igb_ring*,union e1000_adv_rx_desc*,struct sk_buff*) ;
 int igb_receive_skb (struct igb_q_vector*,struct sk_buff*,scalar_t__) ;
 scalar_t__ igb_test_staterr (union e1000_adv_rx_desc*,int ) ;
 scalar_t__ le16_to_cpu (int ) ;
 scalar_t__ likely (int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static bool igb_clean_rx_irq(struct igb_q_vector *q_vector, const int budget)
{
 struct igb_ring *rx_ring = q_vector->rx.ring;
 struct sk_buff *skb = rx_ring->skb;
 unsigned int total_bytes = 0, total_packets = 0;
 u16 vlan_tag = 0;
 u16 cleaned_count = igb_desc_unused(rx_ring);

 do {
  union e1000_adv_rx_desc *rx_desc;


  if (cleaned_count >= IGB_RX_BUFFER_WRITE) {
   igb_alloc_rx_buffers(rx_ring, cleaned_count);
   cleaned_count = 0;
  }

  rx_desc = IGB_RX_DESC(rx_ring, rx_ring->next_to_clean);

  if (!igb_test_staterr(rx_desc, E1000_RXD_STAT_DD))
   break;


  skb = igb_fetch_rx_buffer(rx_ring, rx_desc, skb);


  if (!skb)
   break;

  cleaned_count++;


  if (igb_is_non_eop(rx_ring, rx_desc))
   continue;


  if (igb_cleanup_headers(rx_ring, rx_desc, skb)) {
   skb = ((void*)0);
   continue;
  }


  total_bytes += skb->len;


  igb_process_skb_fields(rx_ring, rx_desc, skb);

  if (igb_test_staterr(rx_desc, E1000_RXDEXT_STATERR_LB) &&
      test_bit(IGB_RING_FLAG_RX_LB_VLAN_BSWAP, &rx_ring->flags))
   vlan_tag = be16_to_cpu(rx_desc->wb.upper.vlan);
  else
   vlan_tag = le16_to_cpu(rx_desc->wb.upper.vlan);

  igb_receive_skb(q_vector, skb, vlan_tag);


  skb = ((void*)0);


  total_packets++;
 } while (likely(total_packets < budget));


 rx_ring->skb = skb;

 rx_ring->rx_stats.packets += total_packets;
 rx_ring->rx_stats.bytes += total_bytes;
 q_vector->rx.total_packets += total_packets;
 q_vector->rx.total_bytes += total_bytes;

 if (cleaned_count)
  igb_alloc_rx_buffers(rx_ring, cleaned_count);

 return (total_packets < budget);
}
