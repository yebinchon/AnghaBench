
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int netdevice; scalar_t__ ctrlio; int txdma; int rxdma; } ;
struct z8530_dev {TYPE_1__ chanA; int irq; } ;


 int dma ;
 int free_dma (int ) ;
 int free_irq (int ,struct z8530_dev*) ;
 int free_netdev (int ) ;
 int kfree (struct z8530_dev*) ;
 int release_region (scalar_t__,int) ;
 int unregister_hdlc_device (int ) ;
 int z8530_shutdown (struct z8530_dev*) ;

__attribute__((used)) static void sv11_shutdown(struct z8530_dev *dev)
{
 unregister_hdlc_device(dev->chanA.netdevice);
 z8530_shutdown(dev);
 free_irq(dev->irq, dev);
 if (dma) {
  if (dma == 1)
   free_dma(dev->chanA.rxdma);
  free_dma(dev->chanA.txdma);
 }
 release_region(dev->chanA.ctrlio - 1, 8);
 free_netdev(dev->chanA.netdevice);
 kfree(dev);
}
