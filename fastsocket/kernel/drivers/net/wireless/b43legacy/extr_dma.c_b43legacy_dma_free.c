
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43legacy_dma {int * tx_ring0; int * tx_ring1; int * tx_ring2; int * tx_ring3; int * tx_ring4; int * tx_ring5; int * rx_ring0; int * rx_ring3; } ;
struct b43legacy_wldev {struct b43legacy_dma dma; } ;


 int b43legacy_destroy_dmaring (int *) ;
 scalar_t__ b43legacy_using_pio (struct b43legacy_wldev*) ;

void b43legacy_dma_free(struct b43legacy_wldev *dev)
{
 struct b43legacy_dma *dma;

 if (b43legacy_using_pio(dev))
  return;
 dma = &dev->dma;

 b43legacy_destroy_dmaring(dma->rx_ring3);
 dma->rx_ring3 = ((void*)0);
 b43legacy_destroy_dmaring(dma->rx_ring0);
 dma->rx_ring0 = ((void*)0);

 b43legacy_destroy_dmaring(dma->tx_ring5);
 dma->tx_ring5 = ((void*)0);
 b43legacy_destroy_dmaring(dma->tx_ring4);
 dma->tx_ring4 = ((void*)0);
 b43legacy_destroy_dmaring(dma->tx_ring3);
 dma->tx_ring3 = ((void*)0);
 b43legacy_destroy_dmaring(dma->tx_ring2);
 dma->tx_ring2 = ((void*)0);
 b43legacy_destroy_dmaring(dma->tx_ring1);
 dma->tx_ring1 = ((void*)0);
 b43legacy_destroy_dmaring(dma->tx_ring0);
 dma->tx_ring0 = ((void*)0);
}
