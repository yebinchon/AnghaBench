
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct ssb_device {int dummy; } ;
struct b43_wldev {TYPE_4__* dev; } ;
struct TYPE_8__ {int chip_id; int bus_type; TYPE_3__* bdev; TYPE_1__* bus_sprom; } ;
struct TYPE_7__ {TYPE_2__* bus; } ;
struct TYPE_6__ {int drv_cc; } ;
struct TYPE_5__ {int boardflags_lo; } ;


 int B43_BFL_PACTRL ;


 int B43_GPIO_CONTROL ;
 int B43_MACCTL_GPOUTSMSK ;
 int B43_MMIO_GPIO_MASK ;
 int B43_MMIO_MACCTL ;
 int b43_maskset16 (struct b43_wldev*,int ,int ,int) ;
 int b43_maskset32 (struct b43_wldev*,int ,int ,int ) ;
 int b43_read16 (struct b43_wldev*,int ) ;
 struct ssb_device* b43_ssb_gpio_dev (struct b43_wldev*) ;
 int b43_write16 (struct b43_wldev*,int ,int) ;
 int bcma_chipco_gpio_control (int *,int,int) ;
 int ssb_read32 (struct ssb_device*,int ) ;
 int ssb_write32 (struct ssb_device*,int ,int) ;

__attribute__((used)) static int b43_gpio_init(struct b43_wldev *dev)
{
 struct ssb_device *gpiodev;
 u32 mask, set;

 b43_maskset32(dev, B43_MMIO_MACCTL, ~B43_MACCTL_GPOUTSMSK, 0);
 b43_maskset16(dev, B43_MMIO_GPIO_MASK, ~0, 0xF);

 mask = 0x0000001F;
 set = 0x0000000F;
 if (dev->dev->chip_id == 0x4301) {
  mask |= 0x0060;
  set |= 0x0060;
 } else if (dev->dev->chip_id == 0x5354) {

  set &= 0x2;
 }

 if (0 ) {
  b43_write16(dev, B43_MMIO_GPIO_MASK,
       b43_read16(dev, B43_MMIO_GPIO_MASK)
       | 0x0100);

  mask |= 0x0080;
  set |= 0x0080;

  mask |= 0x0100;
  set |= 0x0100;
 }
 if (dev->dev->bus_sprom->boardflags_lo & B43_BFL_PACTRL) {

  b43_write16(dev, B43_MMIO_GPIO_MASK,
       b43_read16(dev, B43_MMIO_GPIO_MASK)
       | 0x0200);
  mask |= 0x0200;
  set |= 0x0200;
 }

 switch (dev->dev->bus_type) {
 }

 return 0;
}
