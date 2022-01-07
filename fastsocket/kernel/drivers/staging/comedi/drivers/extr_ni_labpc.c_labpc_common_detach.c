
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_device {scalar_t__ iobase; scalar_t__ irq; scalar_t__ subdevices; int minor; } ;
struct TYPE_4__ {scalar_t__ mite; scalar_t__ dma_chan; scalar_t__ dma_buffer; } ;
struct TYPE_3__ {scalar_t__ bustype; } ;


 int LABPC_SIZE ;
 TYPE_2__* devpriv ;
 int free_dma (scalar_t__) ;
 int free_irq (scalar_t__,struct comedi_device*) ;
 scalar_t__ isa_bustype ;
 int kfree (scalar_t__) ;
 int mite_unsetup (scalar_t__) ;
 int printk (char*,int ) ;
 int release_region (scalar_t__,int ) ;
 int subdev_8255_cleanup (struct comedi_device*,scalar_t__) ;
 TYPE_1__* thisboard ;

int labpc_common_detach(struct comedi_device *dev)
{
 printk("comedi%d: ni_labpc: detach\n", dev->minor);

 if (dev->subdevices)
  subdev_8255_cleanup(dev, dev->subdevices + 2);


 if (devpriv->dma_buffer)
  kfree(devpriv->dma_buffer);
 if (devpriv->dma_chan)
  free_dma(devpriv->dma_chan);
 if (dev->irq)
  free_irq(dev->irq, dev);
 if (thisboard->bustype == isa_bustype && dev->iobase)
  release_region(dev->iobase, LABPC_SIZE);





 return 0;
}
