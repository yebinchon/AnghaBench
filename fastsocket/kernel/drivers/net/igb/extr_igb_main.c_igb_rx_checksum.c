
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int status_error; } ;
struct TYPE_6__ {TYPE_2__ upper; } ;
union e1000_adv_rx_desc {TYPE_3__ wb; } ;
struct sk_buff {int len; int ip_summed; } ;
struct TYPE_4__ {int csum_err; } ;
struct igb_ring {int dev; TYPE_1__ rx_stats; int flags; } ;


 int CHECKSUM_NONE ;
 int CHECKSUM_UNNECESSARY ;
 int E1000_RXDEXT_STATERR_IPE ;
 int E1000_RXDEXT_STATERR_TCPE ;
 int E1000_RXD_STAT_IXSM ;
 int E1000_RXD_STAT_TCPCS ;
 int E1000_RXD_STAT_UDPCS ;
 int IGB_RING_FLAG_RX_CSUM ;
 int IGB_RING_FLAG_RX_SCTP_CSUM ;
 int dev_dbg (int ,char*,int ) ;
 scalar_t__ igb_test_staterr (union e1000_adv_rx_desc*,int) ;
 int le32_to_cpu (int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static inline void igb_rx_checksum(struct igb_ring *ring,
       union e1000_adv_rx_desc *rx_desc,
       struct sk_buff *skb)
{
 skb->ip_summed = CHECKSUM_NONE;


 if (igb_test_staterr(rx_desc, E1000_RXD_STAT_IXSM))
  return;


 if (!test_bit(IGB_RING_FLAG_RX_CSUM, &ring->flags))
  return;


 if (igb_test_staterr(rx_desc,
        E1000_RXDEXT_STATERR_TCPE |
        E1000_RXDEXT_STATERR_IPE)) {




  if (!((skb->len == 60) &&
        test_bit(IGB_RING_FLAG_RX_SCTP_CSUM, &ring->flags))) {
   ring->rx_stats.csum_err++;
  }

  return;
 }

 if (igb_test_staterr(rx_desc, E1000_RXD_STAT_TCPCS |
          E1000_RXD_STAT_UDPCS))
  skb->ip_summed = CHECKSUM_UNNECESSARY;

 dev_dbg(ring->dev, "cksum success: bits %08X\n",
  le32_to_cpu(rx_desc->wb.upper.status_error));
}
