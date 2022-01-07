
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union e1000_adv_rx_desc {int dummy; } e1000_adv_rx_desc ;
typedef int u32 ;
struct igb_ring {int next_to_clean; int count; } ;


 int E1000_RXD_STAT_EOP ;
 int IGB_RX_DESC (struct igb_ring*,int) ;
 int igb_test_staterr (union e1000_adv_rx_desc*,int ) ;
 scalar_t__ likely (int ) ;
 int prefetch (int ) ;

__attribute__((used)) static bool igb_is_non_eop(struct igb_ring *rx_ring,
      union e1000_adv_rx_desc *rx_desc)
{
 u32 ntc = rx_ring->next_to_clean + 1;


 ntc = (ntc < rx_ring->count) ? ntc : 0;
 rx_ring->next_to_clean = ntc;

 prefetch(IGB_RX_DESC(rx_ring, ntc));

 if (likely(igb_test_staterr(rx_desc, E1000_RXD_STAT_EOP)))
  return 0;

 return 1;
}
