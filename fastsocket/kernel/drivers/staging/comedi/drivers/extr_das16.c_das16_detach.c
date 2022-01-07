
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_device {scalar_t__ iobase; scalar_t__ irq; scalar_t__ subdevices; int minor; } ;
struct TYPE_4__ {scalar_t__ user_ao_range_table; scalar_t__ user_ai_range_table; scalar_t__ dma_chan; int * dma_buffer_addr; scalar_t__* dma_buffer; } ;
struct TYPE_3__ {int size; } ;


 int DAS16_DMA_SIZE ;
 int das16_reset (struct comedi_device*) ;
 TYPE_2__* devpriv ;
 int free_dma (scalar_t__) ;
 int free_irq (scalar_t__,struct comedi_device*) ;
 int kfree (scalar_t__) ;
 int pci_free_consistent (int *,int ,scalar_t__,int ) ;
 int printk (char*,int ) ;
 int release_region (scalar_t__,int) ;
 int subdev_8255_cleanup (struct comedi_device*,scalar_t__) ;
 TYPE_1__* thisboard ;

__attribute__((used)) static int das16_detach(struct comedi_device *dev)
{
 printk("comedi%d: das16: remove\n", dev->minor);

 das16_reset(dev);

 if (dev->subdevices)
  subdev_8255_cleanup(dev, dev->subdevices + 4);

 if (devpriv) {
  int i;
  for (i = 0; i < 2; i++) {
   if (devpriv->dma_buffer[i])
    pci_free_consistent(((void*)0), DAS16_DMA_SIZE,
          devpriv->dma_buffer[i],
          devpriv->
          dma_buffer_addr[i]);
  }
  if (devpriv->dma_chan)
   free_dma(devpriv->dma_chan);
  if (devpriv->user_ai_range_table)
   kfree(devpriv->user_ai_range_table);
  if (devpriv->user_ao_range_table)
   kfree(devpriv->user_ao_range_table);
 }

 if (dev->irq)
  free_irq(dev->irq, dev);

 if (dev->iobase) {
  if (thisboard->size < 0x400) {
   release_region(dev->iobase, thisboard->size);
  } else {
   release_region(dev->iobase, 0x10);
   release_region(dev->iobase + 0x400,
           thisboard->size & 0x3ff);
  }
 }

 return 0;
}
