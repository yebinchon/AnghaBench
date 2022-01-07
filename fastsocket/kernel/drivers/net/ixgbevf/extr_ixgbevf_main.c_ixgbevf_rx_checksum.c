
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int ip_summed; } ;
struct ixgbevf_ring {int dummy; } ;
struct ixgbevf_adapter {int flags; int hw_csum_rx_good; int hw_csum_rx_error; } ;


 int CHECKSUM_UNNECESSARY ;
 int IXGBE_FLAG_RX_CSUM_ENABLED ;
 int IXGBE_RXDADV_ERR_IPE ;
 int IXGBE_RXDADV_ERR_TCPE ;
 int IXGBE_RXD_STAT_IPCS ;
 int IXGBE_RXD_STAT_L4CS ;
 int skb_checksum_none_assert (struct sk_buff*) ;

__attribute__((used)) static inline void ixgbevf_rx_checksum(struct ixgbevf_adapter *adapter,
           struct ixgbevf_ring *ring,
           u32 status_err, struct sk_buff *skb)
{
 skb_checksum_none_assert(skb);


 if (!(adapter->flags & IXGBE_FLAG_RX_CSUM_ENABLED))
  return;


 if ((status_err & IXGBE_RXD_STAT_IPCS) &&
     (status_err & IXGBE_RXDADV_ERR_IPE)) {
  adapter->hw_csum_rx_error++;
  return;
 }

 if (!(status_err & IXGBE_RXD_STAT_L4CS))
  return;

 if (status_err & IXGBE_RXDADV_ERR_TCPE) {
  adapter->hw_csum_rx_error++;
  return;
 }


 skb->ip_summed = CHECKSUM_UNNECESSARY;
 adapter->hw_csum_rx_good++;
}
