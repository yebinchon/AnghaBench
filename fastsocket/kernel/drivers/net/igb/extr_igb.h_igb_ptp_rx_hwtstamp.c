
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union e1000_adv_rx_desc {int dummy; } e1000_adv_rx_desc ;
struct sk_buff {int dummy; } ;
struct igb_ring {int last_rx_timestamp; int q_vector; } ;


 int E1000_RXDADV_STAT_TS ;
 int E1000_RXDADV_STAT_TSIP ;
 int igb_ptp_rx_rgtstamp (int ,struct sk_buff*) ;
 scalar_t__ igb_test_staterr (union e1000_adv_rx_desc*,int ) ;
 int jiffies ;

__attribute__((used)) static inline void igb_ptp_rx_hwtstamp(struct igb_ring *rx_ring,
           union e1000_adv_rx_desc *rx_desc,
           struct sk_buff *skb)
{
 if (igb_test_staterr(rx_desc, E1000_RXDADV_STAT_TS) &&
     !igb_test_staterr(rx_desc, E1000_RXDADV_STAT_TSIP))
  igb_ptp_rx_rgtstamp(rx_ring->q_vector, skb);




 rx_ring->last_rx_timestamp = jiffies;
}
