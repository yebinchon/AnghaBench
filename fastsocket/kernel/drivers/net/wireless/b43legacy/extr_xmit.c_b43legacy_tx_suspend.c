
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43legacy_wldev {int dummy; } ;


 int b43legacy_dma_tx_suspend (struct b43legacy_wldev*) ;
 int b43legacy_pio_freeze_txqueues (struct b43legacy_wldev*) ;
 scalar_t__ b43legacy_using_pio (struct b43legacy_wldev*) ;

void b43legacy_tx_suspend(struct b43legacy_wldev *dev)
{
 if (b43legacy_using_pio(dev))
  b43legacy_pio_freeze_txqueues(dev);
 else
  b43legacy_dma_tx_suspend(dev);
}
