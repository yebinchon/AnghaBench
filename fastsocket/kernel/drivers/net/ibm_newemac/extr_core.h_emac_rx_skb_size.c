
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EMAC_DMA_ALIGN (int) ;
 scalar_t__ EMAC_MTU_OVERHEAD ;
 int EMAC_RX_SKB_HEADROOM ;
 int emac_rx_size (int) ;
 int max (scalar_t__,int ) ;

__attribute__((used)) static inline int emac_rx_skb_size(int mtu)
{
 int size = max(mtu + EMAC_MTU_OVERHEAD, emac_rx_size(mtu));
 return EMAC_DMA_ALIGN(size + 2) + EMAC_RX_SKB_HEADROOM;
}
