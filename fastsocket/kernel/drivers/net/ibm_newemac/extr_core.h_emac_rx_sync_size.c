
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EMAC_DMA_ALIGN (scalar_t__) ;
 scalar_t__ emac_rx_size (int) ;

__attribute__((used)) static inline int emac_rx_sync_size(int mtu)
{
 return EMAC_DMA_ALIGN(emac_rx_size(mtu) + 2);
}
