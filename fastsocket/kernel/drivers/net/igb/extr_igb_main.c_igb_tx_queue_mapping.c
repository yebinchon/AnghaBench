
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {unsigned int queue_mapping; } ;
struct igb_ring {int dummy; } ;
struct igb_adapter {unsigned int num_tx_queues; struct igb_ring** tx_ring; } ;



__attribute__((used)) static inline struct igb_ring *igb_tx_queue_mapping(struct igb_adapter *adapter,
          struct sk_buff *skb)
{
 unsigned int r_idx = skb->queue_mapping;

 if (r_idx >= adapter->num_tx_queues)
  r_idx = r_idx % adapter->num_tx_queues;

 return adapter->tx_ring[r_idx];
}
