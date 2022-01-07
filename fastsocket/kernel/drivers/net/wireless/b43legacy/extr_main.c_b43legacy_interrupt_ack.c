
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct b43legacy_wldev {int* dma_reason; TYPE_2__* dev; } ;
struct TYPE_3__ {int revision; } ;
struct TYPE_4__ {TYPE_1__ id; } ;


 int B43legacy_IRQ_PIO_WORKAROUND ;
 int B43legacy_MMIO_DMA0_REASON ;
 int B43legacy_MMIO_DMA1_REASON ;
 int B43legacy_MMIO_DMA2_REASON ;
 int B43legacy_MMIO_DMA3_REASON ;
 int B43legacy_MMIO_DMA4_REASON ;
 int B43legacy_MMIO_DMA5_REASON ;
 int B43legacy_MMIO_GEN_IRQ_REASON ;
 int B43legacy_MMIO_PIO1_BASE ;
 int B43legacy_MMIO_PIO2_BASE ;
 int B43legacy_MMIO_PIO3_BASE ;
 int B43legacy_MMIO_PIO4_BASE ;
 scalar_t__ b43legacy_using_pio (struct b43legacy_wldev*) ;
 int b43legacy_write32 (struct b43legacy_wldev*,int ,int) ;
 int pio_irq_workaround (struct b43legacy_wldev*,int ,int) ;

__attribute__((used)) static void b43legacy_interrupt_ack(struct b43legacy_wldev *dev, u32 reason)
{
 if (b43legacy_using_pio(dev) &&
     (dev->dev->id.revision < 3) &&
     (!(reason & B43legacy_IRQ_PIO_WORKAROUND))) {

  pio_irq_workaround(dev, B43legacy_MMIO_PIO1_BASE, 0);
  pio_irq_workaround(dev, B43legacy_MMIO_PIO2_BASE, 1);
  pio_irq_workaround(dev, B43legacy_MMIO_PIO3_BASE, 2);
  pio_irq_workaround(dev, B43legacy_MMIO_PIO4_BASE, 3);
 }

 b43legacy_write32(dev, B43legacy_MMIO_GEN_IRQ_REASON, reason);

 b43legacy_write32(dev, B43legacy_MMIO_DMA0_REASON,
     dev->dma_reason[0]);
 b43legacy_write32(dev, B43legacy_MMIO_DMA1_REASON,
     dev->dma_reason[1]);
 b43legacy_write32(dev, B43legacy_MMIO_DMA2_REASON,
     dev->dma_reason[2]);
 b43legacy_write32(dev, B43legacy_MMIO_DMA3_REASON,
     dev->dma_reason[3]);
 b43legacy_write32(dev, B43legacy_MMIO_DMA4_REASON,
     dev->dma_reason[4]);
 b43legacy_write32(dev, B43legacy_MMIO_DMA5_REASON,
     dev->dma_reason[5]);
}
