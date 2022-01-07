
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct b43legacy_wldev {TYPE_2__* dev; } ;
struct TYPE_3__ {int revision; } ;
struct TYPE_4__ {TYPE_1__ id; } ;


 int B43legacy_MMIO_RADIO_HWENABLED_HI ;
 int B43legacy_MMIO_RADIO_HWENABLED_HI_MASK ;
 int B43legacy_MMIO_RADIO_HWENABLED_LO ;
 int B43legacy_MMIO_RADIO_HWENABLED_LO_MASK ;
 scalar_t__ B43legacy_STAT_STARTED ;
 int b43legacy_read16 (struct b43legacy_wldev*,int ) ;
 int b43legacy_read32 (struct b43legacy_wldev*,int ) ;
 scalar_t__ b43legacy_status (struct b43legacy_wldev*) ;

bool b43legacy_is_hw_radio_enabled(struct b43legacy_wldev *dev)
{
 if (dev->dev->id.revision >= 3) {
  if (!(b43legacy_read32(dev, B43legacy_MMIO_RADIO_HWENABLED_HI)
        & B43legacy_MMIO_RADIO_HWENABLED_HI_MASK))
   return 1;
 } else {





  if (b43legacy_status(dev) < B43legacy_STAT_STARTED)
   return 1;
  if (b43legacy_read16(dev, B43legacy_MMIO_RADIO_HWENABLED_LO)
      & B43legacy_MMIO_RADIO_HWENABLED_LO_MASK)
   return 1;
 }
 return 0;
}
