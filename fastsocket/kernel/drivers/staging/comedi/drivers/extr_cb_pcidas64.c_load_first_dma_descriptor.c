
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ plx9080_iobase; } ;


 scalar_t__ PLX_DMA0_DESCRIPTOR_REG ;
 scalar_t__ PLX_DMA0_LOCAL_ADDRESS_REG ;
 scalar_t__ PLX_DMA0_PCI_ADDRESS_REG ;
 scalar_t__ PLX_DMA0_TRANSFER_SIZE_REG ;
 scalar_t__ PLX_DMA1_DESCRIPTOR_REG ;
 scalar_t__ PLX_DMA1_LOCAL_ADDRESS_REG ;
 scalar_t__ PLX_DMA1_PCI_ADDRESS_REG ;
 scalar_t__ PLX_DMA1_TRANSFER_SIZE_REG ;
 TYPE_1__* priv (struct comedi_device*) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static inline void load_first_dma_descriptor(struct comedi_device *dev,
          unsigned int dma_channel,
          unsigned int descriptor_bits)
{





 if (dma_channel) {
  writel(0,
         priv(dev)->plx9080_iobase + PLX_DMA1_TRANSFER_SIZE_REG);
  writel(0, priv(dev)->plx9080_iobase + PLX_DMA1_PCI_ADDRESS_REG);
  writel(0,
         priv(dev)->plx9080_iobase + PLX_DMA1_LOCAL_ADDRESS_REG);
  writel(descriptor_bits,
         priv(dev)->plx9080_iobase + PLX_DMA1_DESCRIPTOR_REG);
 } else {
  writel(0,
         priv(dev)->plx9080_iobase + PLX_DMA0_TRANSFER_SIZE_REG);
  writel(0, priv(dev)->plx9080_iobase + PLX_DMA0_PCI_ADDRESS_REG);
  writel(0,
         priv(dev)->plx9080_iobase + PLX_DMA0_LOCAL_ADDRESS_REG);
  writel(descriptor_bits,
         priv(dev)->plx9080_iobase + PLX_DMA0_DESCRIPTOR_REG);
 }
}
