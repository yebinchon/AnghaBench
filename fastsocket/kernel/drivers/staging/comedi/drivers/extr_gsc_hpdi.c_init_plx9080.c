
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {void* plx9080_iobase; } ;


 int BIGEND_DMA0 ;
 int BIGEND_DMA1 ;
 int DEBUG_PRINT (char*,int ) ;
 int PLX_BIGEND_REG ;
 int PLX_CONTROL_REG ;
 int PLX_DEMAND_MODE_BIT ;
 int PLX_DMA0_CS_REG ;
 int PLX_DMA0_DESCRIPTOR_REG ;
 int PLX_DMA0_LOCAL_ADDRESS_REG ;
 int PLX_DMA0_MODE_REG ;
 int PLX_DMA0_PCI_ADDRESS_REG ;
 int PLX_DMA0_THRESHOLD_REG ;
 int PLX_DMA0_TRANSFER_SIZE_REG ;
 int PLX_DMA1_MODE_REG ;
 int PLX_DMA_EN_READYIN_BIT ;
 int PLX_DMA_INTR_PCI_BIT ;
 int PLX_DMA_LOCAL_BURST_EN_BIT ;
 int PLX_EN_CHAIN_BIT ;
 int PLX_EN_DMA_DONE_INTR_BIT ;
 int PLX_ID_REG ;
 int PLX_INTRCS_REG ;
 int PLX_LOCAL_ADDR_CONST_BIT ;
 int PLX_LOCAL_BUS_32_WIDE_BITS ;
 int PLX_REVISION_REG ;
 int abort_dma (struct comedi_device*,int) ;
 int disable_plx_interrupts (struct comedi_device*) ;
 TYPE_1__* priv (struct comedi_device*) ;
 int readb (void*) ;
 int readl (void*) ;
 int writel (int,void*) ;

__attribute__((used)) static void init_plx9080(struct comedi_device *dev)
{
 uint32_t bits;
 void *plx_iobase = priv(dev)->plx9080_iobase;


 DEBUG_PRINT(" plx interrupt status 0x%x\n",
      readl(plx_iobase + PLX_INTRCS_REG));
 DEBUG_PRINT(" plx id bits 0x%x\n", readl(plx_iobase + PLX_ID_REG));
 DEBUG_PRINT(" plx control reg 0x%x\n",
      readl(priv(dev)->plx9080_iobase + PLX_CONTROL_REG));

 DEBUG_PRINT(" plx revision 0x%x\n",
      readl(plx_iobase + PLX_REVISION_REG));
 DEBUG_PRINT(" plx dma channel 0 mode 0x%x\n",
      readl(plx_iobase + PLX_DMA0_MODE_REG));
 DEBUG_PRINT(" plx dma channel 1 mode 0x%x\n",
      readl(plx_iobase + PLX_DMA1_MODE_REG));
 DEBUG_PRINT(" plx dma channel 0 pci address 0x%x\n",
      readl(plx_iobase + PLX_DMA0_PCI_ADDRESS_REG));
 DEBUG_PRINT(" plx dma channel 0 local address 0x%x\n",
      readl(plx_iobase + PLX_DMA0_LOCAL_ADDRESS_REG));
 DEBUG_PRINT(" plx dma channel 0 transfer size 0x%x\n",
      readl(plx_iobase + PLX_DMA0_TRANSFER_SIZE_REG));
 DEBUG_PRINT(" plx dma channel 0 descriptor 0x%x\n",
      readl(plx_iobase + PLX_DMA0_DESCRIPTOR_REG));
 DEBUG_PRINT(" plx dma channel 0 command status 0x%x\n",
      readb(plx_iobase + PLX_DMA0_CS_REG));
 DEBUG_PRINT(" plx dma channel 0 threshold 0x%x\n",
      readl(plx_iobase + PLX_DMA0_THRESHOLD_REG));
 DEBUG_PRINT(" plx bigend 0x%x\n", readl(plx_iobase + PLX_BIGEND_REG));



 bits = 0;

 writel(bits, priv(dev)->plx9080_iobase + PLX_BIGEND_REG);

 disable_plx_interrupts(dev);

 abort_dma(dev, 0);
 abort_dma(dev, 1);


 bits = 0;

 bits |= PLX_DMA_EN_READYIN_BIT;

 bits |= PLX_EN_CHAIN_BIT;

 bits |= PLX_EN_DMA_DONE_INTR_BIT;

 bits |= PLX_LOCAL_ADDR_CONST_BIT;

 bits |= PLX_DMA_INTR_PCI_BIT;

 bits |= PLX_DEMAND_MODE_BIT;

 bits |= PLX_DMA_LOCAL_BURST_EN_BIT;
 bits |= PLX_LOCAL_BUS_32_WIDE_BITS;
 writel(bits, plx_iobase + PLX_DMA0_MODE_REG);
}
