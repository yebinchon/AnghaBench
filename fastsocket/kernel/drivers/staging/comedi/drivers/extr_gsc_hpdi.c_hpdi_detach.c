
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct plx_dma_desc {int dummy; } ;
struct comedi_device {scalar_t__ irq; int minor; } ;
struct TYPE_2__ {scalar_t__ hw_dev; scalar_t__ hpdi_phys_iobase; int dma_desc_phys_addr; scalar_t__ dma_desc; int * dio_buffer_phys_addr; scalar_t__* dio_buffer; scalar_t__ hpdi_iobase; scalar_t__ plx9080_iobase; } ;


 int DMA_BUFFER_SIZE ;
 unsigned int NUM_DMA_BUFFERS ;
 int NUM_DMA_DESCRIPTORS ;
 int comedi_pci_disable (scalar_t__) ;
 int disable_plx_interrupts (struct comedi_device*) ;
 int free_irq (scalar_t__,struct comedi_device*) ;
 int iounmap (void*) ;
 int pci_dev_put (scalar_t__) ;
 int pci_free_consistent (scalar_t__,int,scalar_t__,int ) ;
 int printk (char*,int ) ;
 TYPE_1__* priv (struct comedi_device*) ;

__attribute__((used)) static int hpdi_detach(struct comedi_device *dev)
{
 unsigned int i;

 printk("comedi%d: gsc_hpdi: remove\n", dev->minor);

 if (dev->irq)
  free_irq(dev->irq, dev);
 if (priv(dev)) {
  if (priv(dev)->hw_dev) {
   if (priv(dev)->plx9080_iobase) {
    disable_plx_interrupts(dev);
    iounmap((void *)priv(dev)->plx9080_iobase);
   }
   if (priv(dev)->hpdi_iobase)
    iounmap((void *)priv(dev)->hpdi_iobase);

   for (i = 0; i < NUM_DMA_BUFFERS; i++) {
    if (priv(dev)->dio_buffer[i])
     pci_free_consistent(priv(dev)->hw_dev,
           DMA_BUFFER_SIZE,
           priv(dev)->
           dio_buffer[i],
           priv
           (dev)->dio_buffer_phys_addr
           [i]);
   }

   if (priv(dev)->dma_desc)
    pci_free_consistent(priv(dev)->hw_dev,
          sizeof(struct plx_dma_desc)
          * NUM_DMA_DESCRIPTORS,
          priv(dev)->dma_desc,
          priv(dev)->
          dma_desc_phys_addr);
   if (priv(dev)->hpdi_phys_iobase) {
    comedi_pci_disable(priv(dev)->hw_dev);
   }
   pci_dev_put(priv(dev)->hw_dev);
  }
 }
 return 0;
}
