
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union e1000_adv_rx_desc {int dummy; } e1000_adv_rx_desc ;
struct sk_buff {int protocol; } ;
struct igb_ring {int netdev; int queue_index; } ;


 int eth_type_trans (struct sk_buff*,int ) ;
 int igb_ptp_rx_hwtstamp (struct igb_ring*,union e1000_adv_rx_desc*,struct sk_buff*) ;
 int igb_rx_checksum (struct igb_ring*,union e1000_adv_rx_desc*,struct sk_buff*) ;
 int igb_rx_hash (struct igb_ring*,union e1000_adv_rx_desc*,struct sk_buff*) ;
 int skb_record_rx_queue (struct sk_buff*,int ) ;

__attribute__((used)) static void igb_process_skb_fields(struct igb_ring *rx_ring,
       union e1000_adv_rx_desc *rx_desc,
       struct sk_buff *skb)
{
 igb_rx_hash(rx_ring, rx_desc, skb);

 igb_rx_checksum(rx_ring, rx_desc, skb);

 igb_ptp_rx_hwtstamp(rx_ring, rx_desc, skb);

 skb_record_rx_queue(skb, rx_ring->queue_index);

 skb->protocol = eth_type_trans(skb, rx_ring->netdev);
}
