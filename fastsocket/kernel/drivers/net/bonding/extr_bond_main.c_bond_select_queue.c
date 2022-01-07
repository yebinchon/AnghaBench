
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct sk_buff {int queue_mapping; } ;
struct net_device {scalar_t__ real_num_tx_queues; } ;
struct TYPE_2__ {int bond_queue_mapping; } ;


 TYPE_1__* qdisc_skb_cb (struct sk_buff*) ;
 scalar_t__ skb_get_rx_queue (struct sk_buff*) ;
 scalar_t__ skb_rx_queue_recorded (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static u16 bond_select_queue(struct net_device *dev, struct sk_buff *skb)
{






 u16 txq = skb_rx_queue_recorded(skb) ? skb_get_rx_queue(skb) : 0;




 qdisc_skb_cb(skb)->bond_queue_mapping = skb->queue_mapping;

 if (unlikely(txq >= dev->real_num_tx_queues)) {
  do
   txq -= dev->real_num_tx_queues;
  while (txq >= dev->real_num_tx_queues);
 }
 return txq;
}
