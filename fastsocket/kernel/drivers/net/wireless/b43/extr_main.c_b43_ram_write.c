
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct b43_wldev {int dummy; } ;


 int B43_MACCTL_BE ;
 int B43_MMIO_MACCTL ;
 int B43_MMIO_RAM_CONTROL ;
 int B43_MMIO_RAM_DATA ;
 int B43_WARN_ON (int) ;
 int b43_read32 (struct b43_wldev*,int ) ;
 int b43_write32 (struct b43_wldev*,int ,int) ;
 int mmiowb () ;
 int swab32 (int) ;

__attribute__((used)) static void b43_ram_write(struct b43_wldev *dev, u16 offset, u32 val)
{
 u32 macctl;

 B43_WARN_ON(offset % 4 != 0);

 macctl = b43_read32(dev, B43_MMIO_MACCTL);
 if (macctl & B43_MACCTL_BE)
  val = swab32(val);

 b43_write32(dev, B43_MMIO_RAM_CONTROL, offset);
 mmiowb();
 b43_write32(dev, B43_MMIO_RAM_DATA, val);
}
