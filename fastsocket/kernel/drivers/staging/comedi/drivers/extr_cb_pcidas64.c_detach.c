
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct plx_dma_desc {int dummy; } ;
struct comedi_device {scalar_t__ subdevices; scalar_t__ irq; int minor; } ;
struct TYPE_2__ {scalar_t__ hw_dev; scalar_t__ main_phys_iobase; int ao_dma_desc_bus_addr; scalar_t__ ao_dma_desc; int ai_dma_desc_bus_addr; scalar_t__ ai_dma_desc; int * ao_buffer_bus_addr; scalar_t__* ao_buffer; int * ai_buffer_bus_addr; scalar_t__* ai_buffer; scalar_t__ dio_counter_iobase; scalar_t__ main_iobase; scalar_t__ plx9080_iobase; } ;


 unsigned int AO_DMA_RING_COUNT ;
 int DMA_BUFFER_SIZE ;
 int ai_dma_ring_count (int ) ;
 int board (struct comedi_device*) ;
 int comedi_pci_disable (scalar_t__) ;
 int disable_plx_interrupts (struct comedi_device*) ;
 int free_irq (scalar_t__,struct comedi_device*) ;
 int iounmap (void*) ;
 int pci_dev_put (scalar_t__) ;
 int pci_free_consistent (scalar_t__,int,scalar_t__,int ) ;
 int printk (char*,int ) ;
 TYPE_1__* priv (struct comedi_device*) ;
 int subdev_8255_cleanup (struct comedi_device*,scalar_t__) ;

__attribute__((used)) static int detach(struct comedi_device *dev)
{
 unsigned int i;

 printk("comedi%d: cb_pcidas: remove\n", dev->minor);

 if (dev->irq)
  free_irq(dev->irq, dev);
 if (priv(dev)) {
  if (priv(dev)->hw_dev) {
   if (priv(dev)->plx9080_iobase) {
    disable_plx_interrupts(dev);
    iounmap((void *)priv(dev)->plx9080_iobase);
   }
   if (priv(dev)->main_iobase)
    iounmap((void *)priv(dev)->main_iobase);
   if (priv(dev)->dio_counter_iobase)
    iounmap((void *)priv(dev)->dio_counter_iobase);

   for (i = 0; i < ai_dma_ring_count(board(dev)); i++) {
    if (priv(dev)->ai_buffer[i])
     pci_free_consistent(priv(dev)->hw_dev,
           DMA_BUFFER_SIZE,
           priv(dev)->
           ai_buffer[i],
           priv
           (dev)->ai_buffer_bus_addr
           [i]);
   }
   for (i = 0; i < AO_DMA_RING_COUNT; i++) {
    if (priv(dev)->ao_buffer[i])
     pci_free_consistent(priv(dev)->hw_dev,
           DMA_BUFFER_SIZE,
           priv(dev)->
           ao_buffer[i],
           priv
           (dev)->ao_buffer_bus_addr
           [i]);
   }

   if (priv(dev)->ai_dma_desc)
    pci_free_consistent(priv(dev)->hw_dev,
          sizeof(struct plx_dma_desc)
          *
          ai_dma_ring_count(board
              (dev)),
          priv(dev)->ai_dma_desc,
          priv(dev)->
          ai_dma_desc_bus_addr);
   if (priv(dev)->ao_dma_desc)
    pci_free_consistent(priv(dev)->hw_dev,
          sizeof(struct plx_dma_desc)
          * AO_DMA_RING_COUNT,
          priv(dev)->ao_dma_desc,
          priv(dev)->
          ao_dma_desc_bus_addr);
   if (priv(dev)->main_phys_iobase) {
    comedi_pci_disable(priv(dev)->hw_dev);
   }
   pci_dev_put(priv(dev)->hw_dev);
  }
 }
 if (dev->subdevices)
  subdev_8255_cleanup(dev, dev->subdevices + 4);

 return 0;
}
