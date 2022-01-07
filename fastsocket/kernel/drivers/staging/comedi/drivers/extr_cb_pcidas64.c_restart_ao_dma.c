
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ plx9080_iobase; } ;


 int DEBUG_PRINT (char*,unsigned int) ;
 scalar_t__ PLX_DMA0_DESCRIPTOR_REG ;
 unsigned int PLX_END_OF_CHAIN_BIT ;
 int dma_start_sync (struct comedi_device*,int ) ;
 int load_first_dma_descriptor (struct comedi_device*,int ,unsigned int) ;
 TYPE_1__* priv (struct comedi_device*) ;
 unsigned int readl (scalar_t__) ;

__attribute__((used)) static void restart_ao_dma(struct comedi_device *dev)
{
 unsigned int dma_desc_bits;

 dma_desc_bits =
     readl(priv(dev)->plx9080_iobase + PLX_DMA0_DESCRIPTOR_REG);
 dma_desc_bits &= ~PLX_END_OF_CHAIN_BIT;
 DEBUG_PRINT("restarting ao dma, descriptor reg 0x%x\n", dma_desc_bits);
 load_first_dma_descriptor(dev, 0, dma_desc_bits);

 dma_start_sync(dev, 0);
}
