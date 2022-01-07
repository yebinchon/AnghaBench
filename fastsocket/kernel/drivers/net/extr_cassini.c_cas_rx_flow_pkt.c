
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct cas {struct sk_buff_head* rx_flows; } ;


 int CAS_VAL (int ,int const) ;
 int N_RX_FLOWS ;
 int const RX_COMP1_RELEASE_FLOW ;
 int RX_COMP3_FLOWID ;
 struct sk_buff* __skb_dequeue (struct sk_buff_head*) ;
 int __skb_queue_tail (struct sk_buff_head*,struct sk_buff*) ;
 int cas_skb_release (struct sk_buff*) ;

__attribute__((used)) static inline void cas_rx_flow_pkt(struct cas *cp, const u64 *words,
       struct sk_buff *skb)
{
 int flowid = CAS_VAL(RX_COMP3_FLOWID, words[2]) & (N_RX_FLOWS - 1);
 struct sk_buff_head *flow = &cp->rx_flows[flowid];





 __skb_queue_tail(flow, skb);
 if (words[0] & RX_COMP1_RELEASE_FLOW) {
  while ((skb = __skb_dequeue(flow))) {
   cas_skb_release(skb);
  }
 }
}
