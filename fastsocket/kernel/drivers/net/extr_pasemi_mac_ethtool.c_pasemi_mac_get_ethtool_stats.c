
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct pasemi_mac {int dma_if; } ;
struct net_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;


 int PAS_DMA_RXINT_RCMDSTA (int ) ;
 int PAS_DMA_RXINT_RCMDSTA_DROPS_S ;
 int PAS_MAC_RMON (int) ;
 struct pasemi_mac* netdev_priv (struct net_device*) ;
 int pasemi_read_dma_reg (int ) ;
 int pasemi_read_mac_reg (int ,int ) ;

__attribute__((used)) static void pasemi_mac_get_ethtool_stats(struct net_device *netdev,
  struct ethtool_stats *stats, u64 *data)
{
 struct pasemi_mac *mac = netdev_priv(netdev);
 int i;

 data[0] = pasemi_read_dma_reg(PAS_DMA_RXINT_RCMDSTA(mac->dma_if))
   >> PAS_DMA_RXINT_RCMDSTA_DROPS_S;
 for (i = 0; i < 32; i++)
  data[1+i] = pasemi_read_mac_reg(mac->dma_if, PAS_MAC_RMON(i));
}
