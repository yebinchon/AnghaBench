
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int ETIMEDOUT ;
 int PLX_DMA0_CS_REG ;
 int PLX_DMA1_CS_REG ;
 int PLX_DMA_ABORT_BIT ;
 int PLX_DMA_DONE_BIT ;
 int PLX_DMA_EN_BIT ;
 int printk (char*,unsigned int) ;
 int readb (void*) ;
 int udelay (int) ;
 int writeb (int ,void*) ;

__attribute__((used)) static inline int plx9080_abort_dma(void *iobase, unsigned int channel)
{
 void *dma_cs_addr;
 uint8_t dma_status;
 const int timeout = 10000;
 unsigned int i;

 if (channel)
  dma_cs_addr = iobase + PLX_DMA1_CS_REG;
 else
  dma_cs_addr = iobase + PLX_DMA0_CS_REG;


 dma_status = readb(dma_cs_addr);
 if ((dma_status & PLX_DMA_EN_BIT) == 0)
  return 0;


 for (i = 0; (dma_status & PLX_DMA_DONE_BIT) && i < timeout; i++) {
  udelay(1);
  dma_status = readb(dma_cs_addr);
 }
 if (i == timeout) {
  printk
      ("plx9080: cancel() timed out waiting for dma %i done clear\n",
       channel);
  return -ETIMEDOUT;
 }

 writeb(PLX_DMA_ABORT_BIT, dma_cs_addr);

 dma_status = readb(dma_cs_addr);
 for (i = 0; (dma_status & PLX_DMA_DONE_BIT) == 0 && i < timeout; i++) {
  udelay(1);
  dma_status = readb(dma_cs_addr);
 }
 if (i == timeout) {
  printk
      ("plx9080: cancel() timed out waiting for dma %i done set\n",
       channel);
  return -ETIMEDOUT;
 }

 return 0;
}
