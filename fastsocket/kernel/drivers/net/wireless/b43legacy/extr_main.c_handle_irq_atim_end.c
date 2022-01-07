
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43legacy_wldev {int dfq_valid; } ;


 int B43legacy_MACCMD_DFQ_VALID ;
 int B43legacy_MMIO_MACCMD ;
 int b43legacy_read32 (struct b43legacy_wldev*,int ) ;
 int b43legacy_write32 (struct b43legacy_wldev*,int ,int) ;

__attribute__((used)) static void handle_irq_atim_end(struct b43legacy_wldev *dev)
{
 if (dev->dfq_valid) {
  b43legacy_write32(dev, B43legacy_MMIO_MACCMD,
      b43legacy_read32(dev, B43legacy_MMIO_MACCMD)
      | B43legacy_MACCMD_DFQ_VALID);
  dev->dfq_valid = 0;
 }
}
