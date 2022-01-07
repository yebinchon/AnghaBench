
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct mace_data {scalar_t__ rx_tail; scalar_t__ rx_ring_phys; } ;


 int N_RX_RING ;
 scalar_t__ PSC_ENETRD_ADDR ;
 scalar_t__ PSC_ENETRD_CMD ;
 scalar_t__ PSC_ENETRD_LEN ;
 struct mace_data* netdev_priv (struct net_device*) ;
 int psc_write_long (scalar_t__,int ) ;
 int psc_write_word (scalar_t__,int) ;

__attribute__((used)) static void mace_load_rxdma_base(struct net_device *dev, int set)
{
 struct mace_data *mp = netdev_priv(dev);

 psc_write_word(PSC_ENETRD_CMD + set, 0x0100);
 psc_write_long(PSC_ENETRD_ADDR + set, (u32) mp->rx_ring_phys);
 psc_write_long(PSC_ENETRD_LEN + set, N_RX_RING);
 psc_write_word(PSC_ENETRD_CMD + set, 0x9800);
 mp->rx_tail = 0;
}
