
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {int dummy; } ;


 int b43_dma_tx_resume (struct b43_wldev*) ;
 int b43_pio_tx_resume (struct b43_wldev*) ;
 scalar_t__ b43_using_pio_transfers (struct b43_wldev*) ;

void b43_tx_resume(struct b43_wldev *dev)
{
 if (b43_using_pio_transfers(dev))
  b43_pio_tx_resume(dev);
 else
  b43_dma_tx_resume(dev);
}
