
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_ring5; int tx_ring4; int tx_ring3; int tx_ring2; int tx_ring1; int tx_ring0; } ;
struct b43legacy_wldev {TYPE_1__ dma; } ;


 int b43legacy_dma_tx_suspend_ring (int ) ;
 int b43legacy_power_saving_ctl_bits (struct b43legacy_wldev*,int,int) ;

void b43legacy_dma_tx_suspend(struct b43legacy_wldev *dev)
{
 b43legacy_power_saving_ctl_bits(dev, -1, 1);
 b43legacy_dma_tx_suspend_ring(dev->dma.tx_ring0);
 b43legacy_dma_tx_suspend_ring(dev->dma.tx_ring1);
 b43legacy_dma_tx_suspend_ring(dev->dma.tx_ring2);
 b43legacy_dma_tx_suspend_ring(dev->dma.tx_ring3);
 b43legacy_dma_tx_suspend_ring(dev->dma.tx_ring4);
 b43legacy_dma_tx_suspend_ring(dev->dma.tx_ring5);
}
