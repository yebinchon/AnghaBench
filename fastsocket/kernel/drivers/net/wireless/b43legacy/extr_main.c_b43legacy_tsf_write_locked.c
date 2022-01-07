
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct b43legacy_wldev {TYPE_1__* dev; } ;
struct TYPE_4__ {int revision; } ;
struct TYPE_3__ {TYPE_2__ id; } ;


 int B43legacy_MMIO_REV3PLUS_TSF_HIGH ;
 int B43legacy_MMIO_REV3PLUS_TSF_LOW ;
 int B43legacy_MMIO_TSF_0 ;
 int B43legacy_MMIO_TSF_1 ;
 int B43legacy_MMIO_TSF_2 ;
 int B43legacy_MMIO_TSF_3 ;
 int b43legacy_write16 (struct b43legacy_wldev*,int ,int) ;
 int b43legacy_write32 (struct b43legacy_wldev*,int ,int) ;
 int mmiowb () ;

__attribute__((used)) static void b43legacy_tsf_write_locked(struct b43legacy_wldev *dev, u64 tsf)
{




 if (dev->dev->id.revision >= 3) {
  u32 lo = (tsf & 0x00000000FFFFFFFFULL);
  u32 hi = (tsf & 0xFFFFFFFF00000000ULL) >> 32;

  b43legacy_write32(dev, B43legacy_MMIO_REV3PLUS_TSF_LOW, 0);
  mmiowb();
  b43legacy_write32(dev, B43legacy_MMIO_REV3PLUS_TSF_HIGH,
        hi);
  mmiowb();
  b43legacy_write32(dev, B43legacy_MMIO_REV3PLUS_TSF_LOW,
        lo);
 } else {
  u16 v0 = (tsf & 0x000000000000FFFFULL);
  u16 v1 = (tsf & 0x00000000FFFF0000ULL) >> 16;
  u16 v2 = (tsf & 0x0000FFFF00000000ULL) >> 32;
  u16 v3 = (tsf & 0xFFFF000000000000ULL) >> 48;

  b43legacy_write16(dev, B43legacy_MMIO_TSF_0, 0);
  mmiowb();
  b43legacy_write16(dev, B43legacy_MMIO_TSF_3, v3);
  mmiowb();
  b43legacy_write16(dev, B43legacy_MMIO_TSF_2, v2);
  mmiowb();
  b43legacy_write16(dev, B43legacy_MMIO_TSF_1, v1);
  mmiowb();
  b43legacy_write16(dev, B43legacy_MMIO_TSF_0, v0);
 }
}
