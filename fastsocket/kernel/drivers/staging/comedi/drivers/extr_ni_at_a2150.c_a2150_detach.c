
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_device {scalar_t__ irq; scalar_t__ iobase; int minor; } ;
struct TYPE_4__ {scalar_t__ dma_buffer; scalar_t__ dma; } ;
struct TYPE_3__ {int driver_name; } ;


 int A2150_SIZE ;
 int APD_BIT ;
 scalar_t__ CONFIG_REG ;
 int DPD_BIT ;
 TYPE_2__* devpriv ;
 TYPE_1__ driver_a2150 ;
 int free_dma (scalar_t__) ;
 int free_irq (scalar_t__,struct comedi_device*) ;
 int kfree (scalar_t__) ;
 int outw (int,scalar_t__) ;
 int printk (char*,int ,int ) ;
 int release_region (scalar_t__,int ) ;

__attribute__((used)) static int a2150_detach(struct comedi_device *dev)
{
 printk("comedi%d: %s: remove\n", dev->minor, driver_a2150.driver_name);


 if (dev->iobase) {

  outw(APD_BIT | DPD_BIT, dev->iobase + CONFIG_REG);
  release_region(dev->iobase, A2150_SIZE);
 }

 if (dev->irq)
  free_irq(dev->irq, dev);
 if (devpriv) {
  if (devpriv->dma)
   free_dma(devpriv->dma);
  if (devpriv->dma_buffer)
   kfree(devpriv->dma_buffer);
 }

 return 0;
}
