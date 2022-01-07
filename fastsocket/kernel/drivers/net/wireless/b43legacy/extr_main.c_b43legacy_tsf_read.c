
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct b43legacy_wldev {TYPE_2__* dev; } ;
struct TYPE_3__ {int revision; } ;
struct TYPE_4__ {TYPE_1__ id; } ;


 int B43legacy_MMIO_REV3PLUS_TSF_HIGH ;
 int B43legacy_MMIO_REV3PLUS_TSF_LOW ;
 int B43legacy_MMIO_TSF_0 ;
 int B43legacy_MMIO_TSF_1 ;
 int B43legacy_MMIO_TSF_2 ;
 int B43legacy_MMIO_TSF_3 ;
 scalar_t__ b43legacy_read16 (struct b43legacy_wldev*,int ) ;
 scalar_t__ b43legacy_read32 (struct b43legacy_wldev*,int ) ;
 scalar_t__ unlikely (int) ;

void b43legacy_tsf_read(struct b43legacy_wldev *dev, u64 *tsf)
{






 if (dev->dev->id.revision >= 3) {
  u32 low;
  u32 high;
  u32 high2;

  do {
   high = b43legacy_read32(dev,
     B43legacy_MMIO_REV3PLUS_TSF_HIGH);
   low = b43legacy_read32(dev,
     B43legacy_MMIO_REV3PLUS_TSF_LOW);
   high2 = b43legacy_read32(dev,
     B43legacy_MMIO_REV3PLUS_TSF_HIGH);
  } while (unlikely(high != high2));

  *tsf = high;
  *tsf <<= 32;
  *tsf |= low;
 } else {
  u64 tmp;
  u16 v0;
  u16 v1;
  u16 v2;
  u16 v3;
  u16 test1;
  u16 test2;
  u16 test3;

  do {
   v3 = b43legacy_read16(dev, B43legacy_MMIO_TSF_3);
   v2 = b43legacy_read16(dev, B43legacy_MMIO_TSF_2);
   v1 = b43legacy_read16(dev, B43legacy_MMIO_TSF_1);
   v0 = b43legacy_read16(dev, B43legacy_MMIO_TSF_0);

   test3 = b43legacy_read16(dev, B43legacy_MMIO_TSF_3);
   test2 = b43legacy_read16(dev, B43legacy_MMIO_TSF_2);
   test1 = b43legacy_read16(dev, B43legacy_MMIO_TSF_1);
  } while (v3 != test3 || v2 != test2 || v1 != test1);

  *tsf = v3;
  *tsf <<= 48;
  tmp = v2;
  tmp <<= 32;
  *tsf |= tmp;
  tmp = v1;
  tmp <<= 16;
  *tsf |= tmp;
  *tsf |= v0;
 }
}
