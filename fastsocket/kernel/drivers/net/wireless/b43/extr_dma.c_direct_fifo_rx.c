
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct b43_wldev {int dummy; } ;
typedef enum b43_dmatype { ____Placeholder_b43_dmatype } b43_dmatype ;


 scalar_t__ B43_DMA32_RXCTL ;
 int B43_DMA32_RXDIRECTFIFO ;
 scalar_t__ B43_DMA64_RXCTL ;
 int B43_DMA64_RXDIRECTFIFO ;
 int B43_DMA_64BIT ;
 int b43_read32 (struct b43_wldev*,scalar_t__) ;
 int b43_write32 (struct b43_wldev*,scalar_t__,int ) ;

__attribute__((used)) static void direct_fifo_rx(struct b43_wldev *dev, enum b43_dmatype type,
      u16 mmio_base, bool enable)
{
 u32 ctl;

 if (type == B43_DMA_64BIT) {
  ctl = b43_read32(dev, mmio_base + B43_DMA64_RXCTL);
  ctl &= ~B43_DMA64_RXDIRECTFIFO;
  if (enable)
   ctl |= B43_DMA64_RXDIRECTFIFO;
  b43_write32(dev, mmio_base + B43_DMA64_RXCTL, ctl);
 } else {
  ctl = b43_read32(dev, mmio_base + B43_DMA32_RXCTL);
  ctl &= ~B43_DMA32_RXDIRECTFIFO;
  if (enable)
   ctl |= B43_DMA32_RXDIRECTFIFO;
  b43_write32(dev, mmio_base + B43_DMA32_RXCTL, ctl);
 }
}
