
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_device {scalar_t__ private; scalar_t__ iobase; scalar_t__ irq; } ;
struct TYPE_4__ {TYPE_1__* dma; } ;
struct TYPE_3__ {scalar_t__ buf; scalar_t__ chan; } ;


 int DT2821_SIZE ;
 TYPE_2__* devpriv ;
 int free_dma (scalar_t__) ;
 int free_irq (scalar_t__,struct comedi_device*) ;
 int free_page (unsigned long) ;
 int release_region (scalar_t__,int ) ;

__attribute__((used)) static void free_resources(struct comedi_device *dev)
{
 if (dev->irq) {
  free_irq(dev->irq, dev);
 }
 if (dev->iobase)
  release_region(dev->iobase, DT2821_SIZE);
 if (dev->private) {
  if (devpriv->dma[0].chan)
   free_dma(devpriv->dma[0].chan);
  if (devpriv->dma[1].chan)
   free_dma(devpriv->dma[1].chan);
  if (devpriv->dma[0].buf)
   free_page((unsigned long)devpriv->dma[0].buf);
  if (devpriv->dma[1].buf)
   free_page((unsigned long)devpriv->dma[1].buf);
 }
}
