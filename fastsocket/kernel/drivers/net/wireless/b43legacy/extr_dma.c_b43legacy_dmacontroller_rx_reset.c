
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct b43legacy_wldev {int wl; } ;
typedef enum b43legacy_dmatype { ____Placeholder_b43legacy_dmatype } b43legacy_dmatype ;


 scalar_t__ B43legacy_DMA32_RXCTL ;
 int B43legacy_DMA32_RXSTATE ;
 scalar_t__ B43legacy_DMA32_RXSTATUS ;
 int B43legacy_DMA32_RXSTAT_DISABLED ;
 int ENODEV ;
 int b43legacy_read32 (struct b43legacy_wldev*,scalar_t__) ;
 int b43legacy_write32 (struct b43legacy_wldev*,scalar_t__,int ) ;
 int b43legacyerr (int ,char*) ;
 int might_sleep () ;
 int msleep (int) ;

__attribute__((used)) static int b43legacy_dmacontroller_rx_reset(struct b43legacy_wldev *dev,
         u16 mmio_base,
         enum b43legacy_dmatype type)
{
 int i;
 u32 value;
 u16 offset;

 might_sleep();

 offset = B43legacy_DMA32_RXCTL;
 b43legacy_write32(dev, mmio_base + offset, 0);
 for (i = 0; i < 10; i++) {
  offset = B43legacy_DMA32_RXSTATUS;
  value = b43legacy_read32(dev, mmio_base + offset);
  value &= B43legacy_DMA32_RXSTATE;
  if (value == B43legacy_DMA32_RXSTAT_DISABLED) {
   i = -1;
   break;
  }
  msleep(1);
 }
 if (i != -1) {
  b43legacyerr(dev->wl, "DMA RX reset timed out\n");
  return -ENODEV;
 }

 return 0;
}
