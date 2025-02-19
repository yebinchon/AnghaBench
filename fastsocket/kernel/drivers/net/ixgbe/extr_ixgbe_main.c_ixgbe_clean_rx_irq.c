
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef union ixgbe_adv_rx_desc {int dummy; } ixgbe_adv_rx_desc ;
typedef scalar_t__ u16 ;
struct sk_buff {scalar_t__ len; } ;
struct TYPE_5__ {unsigned int packets; unsigned int bytes; } ;
struct ixgbe_ring {TYPE_2__ stats; TYPE_1__* netdev; int next_to_clean; } ;
struct TYPE_6__ {unsigned int total_packets; unsigned int total_bytes; } ;
struct ixgbe_q_vector {TYPE_3__ rx; struct ixgbe_adapter* adapter; } ;
struct ixgbe_adapter {int dummy; } ;
struct fcoe_hdr {int dummy; } ;
struct fcoe_crc_eof {int dummy; } ;
struct fc_frame_header {int dummy; } ;
struct TYPE_4__ {int mtu; } ;


 scalar_t__ DIV_ROUND_UP (int,unsigned int) ;
 int IXGBE_RXD_STAT_DD ;
 scalar_t__ IXGBE_RX_BUFFER_WRITE ;
 union ixgbe_adv_rx_desc* IXGBE_RX_DESC (struct ixgbe_ring*,int ) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int ixgbe_alloc_rx_buffers (struct ixgbe_ring*,scalar_t__) ;
 scalar_t__ ixgbe_cleanup_headers (struct ixgbe_ring*,union ixgbe_adv_rx_desc*,struct sk_buff*) ;
 scalar_t__ ixgbe_desc_unused (struct ixgbe_ring*) ;
 int ixgbe_fcoe_ddp (struct ixgbe_adapter*,union ixgbe_adv_rx_desc*,struct sk_buff*) ;
 struct sk_buff* ixgbe_fetch_rx_buffer (struct ixgbe_ring*,union ixgbe_adv_rx_desc*) ;
 scalar_t__ ixgbe_is_non_eop (struct ixgbe_ring*,union ixgbe_adv_rx_desc*,struct sk_buff*) ;
 int ixgbe_process_skb_fields (struct ixgbe_ring*,union ixgbe_adv_rx_desc*,struct sk_buff*) ;
 scalar_t__ ixgbe_rx_is_fcoe (struct ixgbe_ring*,union ixgbe_adv_rx_desc*) ;
 int ixgbe_rx_skb (struct ixgbe_q_vector*,struct sk_buff*,union ixgbe_adv_rx_desc*) ;
 int ixgbe_test_staterr (union ixgbe_adv_rx_desc*,int ) ;
 scalar_t__ likely (int) ;
 int rmb () ;

__attribute__((used)) static bool ixgbe_clean_rx_irq(struct ixgbe_q_vector *q_vector,
          struct ixgbe_ring *rx_ring,
          const int budget)
{
 unsigned int total_rx_bytes = 0, total_rx_packets = 0;





 u16 cleaned_count = ixgbe_desc_unused(rx_ring);

 do {
  union ixgbe_adv_rx_desc *rx_desc;
  struct sk_buff *skb;


  if (cleaned_count >= IXGBE_RX_BUFFER_WRITE) {
   ixgbe_alloc_rx_buffers(rx_ring, cleaned_count);
   cleaned_count = 0;
  }

  rx_desc = IXGBE_RX_DESC(rx_ring, rx_ring->next_to_clean);

  if (!ixgbe_test_staterr(rx_desc, IXGBE_RXD_STAT_DD))
   break;






  rmb();


  skb = ixgbe_fetch_rx_buffer(rx_ring, rx_desc);


  if (!skb)
   break;

  cleaned_count++;


  if (ixgbe_is_non_eop(rx_ring, rx_desc, skb))
   continue;


  if (ixgbe_cleanup_headers(rx_ring, rx_desc, skb))
   continue;


  total_rx_bytes += skb->len;


  ixgbe_process_skb_fields(rx_ring, rx_desc, skb);
  ixgbe_rx_skb(q_vector, skb, rx_desc);


  total_rx_packets++;
 } while (likely(total_rx_packets < budget));

 rx_ring->stats.packets += total_rx_packets;
 rx_ring->stats.bytes += total_rx_bytes;
 q_vector->rx.total_packets += total_rx_packets;
 q_vector->rx.total_bytes += total_rx_bytes;

 if (cleaned_count)
  ixgbe_alloc_rx_buffers(rx_ring, cleaned_count);

 return (total_rx_packets < budget);
}
