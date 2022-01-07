
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct b43_wldev {int irq_mask; int* dma_reason; int irq_reason; } ;
typedef int irqreturn_t ;


 int B43_MMIO_DMA0_REASON ;
 int B43_MMIO_DMA1_REASON ;
 int B43_MMIO_DMA2_REASON ;
 int B43_MMIO_DMA3_REASON ;
 int B43_MMIO_DMA4_REASON ;
 int B43_MMIO_GEN_IRQ_MASK ;
 int B43_MMIO_GEN_IRQ_REASON ;
 int IRQ_NONE ;
 int IRQ_WAKE_THREAD ;
 int b43_read32 (struct b43_wldev*,int ) ;
 int b43_write32 (struct b43_wldev*,int ,int) ;

__attribute__((used)) static irqreturn_t b43_do_interrupt(struct b43_wldev *dev)
{
 u32 reason;




 reason = b43_read32(dev, B43_MMIO_GEN_IRQ_REASON);
 if (reason == 0xffffffff)
  return IRQ_NONE;
 reason &= dev->irq_mask;
 if (!reason)
  return IRQ_NONE;

 dev->dma_reason[0] = b43_read32(dev, B43_MMIO_DMA0_REASON)
     & 0x0001FC00;
 dev->dma_reason[1] = b43_read32(dev, B43_MMIO_DMA1_REASON)
     & 0x0000DC00;
 dev->dma_reason[2] = b43_read32(dev, B43_MMIO_DMA2_REASON)
     & 0x0000DC00;
 dev->dma_reason[3] = b43_read32(dev, B43_MMIO_DMA3_REASON)
     & 0x0001DC00;
 dev->dma_reason[4] = b43_read32(dev, B43_MMIO_DMA4_REASON)
     & 0x0000DC00;






 b43_write32(dev, B43_MMIO_GEN_IRQ_REASON, reason);
 b43_write32(dev, B43_MMIO_DMA0_REASON, dev->dma_reason[0]);
 b43_write32(dev, B43_MMIO_DMA1_REASON, dev->dma_reason[1]);
 b43_write32(dev, B43_MMIO_DMA2_REASON, dev->dma_reason[2]);
 b43_write32(dev, B43_MMIO_DMA3_REASON, dev->dma_reason[3]);
 b43_write32(dev, B43_MMIO_DMA4_REASON, dev->dma_reason[4]);





 b43_write32(dev, B43_MMIO_GEN_IRQ_MASK, 0);

 dev->irq_reason = reason;

 return IRQ_WAKE_THREAD;
}
