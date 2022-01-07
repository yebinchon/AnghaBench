
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int gmode; } ;
struct b43legacy_wldev {TYPE_1__ phy; int dev; } ;


 int B43legacy_MACCTL_GMODE ;
 int B43legacy_MACCTL_IHR_ENABLED ;
 int B43legacy_MMIO_MACCTL ;
 int B43legacy_TMSLOW_GMODE ;
 int B43legacy_TMSLOW_PHYCLKEN ;
 int B43legacy_TMSLOW_PHYRESET ;
 int SSB_TMSLOW ;
 int SSB_TMSLOW_FGC ;
 int b43legacy_read32 (struct b43legacy_wldev*,int ) ;
 int b43legacy_switch_analog (struct b43legacy_wldev*,int) ;
 int b43legacy_write32 (struct b43legacy_wldev*,int ,int) ;
 int msleep (int) ;
 int ssb_device_enable (int ,int) ;
 int ssb_read32 (int ,int ) ;
 int ssb_write32 (int ,int ,int) ;

void b43legacy_wireless_core_reset(struct b43legacy_wldev *dev, u32 flags)
{
 u32 tmslow;
 u32 macctl;

 flags |= B43legacy_TMSLOW_PHYCLKEN;
 flags |= B43legacy_TMSLOW_PHYRESET;
 ssb_device_enable(dev->dev, flags);
 msleep(2);


 tmslow = ssb_read32(dev->dev, SSB_TMSLOW);
 tmslow |= SSB_TMSLOW_FGC;
 tmslow &= ~B43legacy_TMSLOW_PHYRESET;
 ssb_write32(dev->dev, SSB_TMSLOW, tmslow);
 ssb_read32(dev->dev, SSB_TMSLOW);
 msleep(1);
 tmslow &= ~SSB_TMSLOW_FGC;
 ssb_write32(dev->dev, SSB_TMSLOW, tmslow);
 ssb_read32(dev->dev, SSB_TMSLOW);
 msleep(1);


 b43legacy_switch_analog(dev, 1);

 macctl = b43legacy_read32(dev, B43legacy_MMIO_MACCTL);
 macctl &= ~B43legacy_MACCTL_GMODE;
 if (flags & B43legacy_TMSLOW_GMODE) {
  macctl |= B43legacy_MACCTL_GMODE;
  dev->phy.gmode = 1;
 } else
  dev->phy.gmode = 0;
 macctl |= B43legacy_MACCTL_IHR_ENABLED;
 b43legacy_write32(dev, B43legacy_MMIO_MACCTL, macctl);
}
