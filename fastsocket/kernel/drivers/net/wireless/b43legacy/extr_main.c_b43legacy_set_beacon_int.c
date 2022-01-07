
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct b43legacy_wldev {int wl; TYPE_2__* dev; } ;
struct TYPE_3__ {int revision; } ;
struct TYPE_4__ {TYPE_1__ id; } ;


 int B43legacy_MMIO_TSF_CFP_REP ;
 int B43legacy_MMIO_TSF_CFP_START ;
 int b43legacy_time_lock (struct b43legacy_wldev*) ;
 int b43legacy_time_unlock (struct b43legacy_wldev*) ;
 int b43legacy_write16 (struct b43legacy_wldev*,int,int) ;
 int b43legacy_write32 (struct b43legacy_wldev*,int ,int) ;
 int b43legacydbg (int ,char*,int) ;

__attribute__((used)) static void b43legacy_set_beacon_int(struct b43legacy_wldev *dev,
         u16 beacon_int)
{
 b43legacy_time_lock(dev);
 if (dev->dev->id.revision >= 3) {
  b43legacy_write32(dev, B43legacy_MMIO_TSF_CFP_REP,
     (beacon_int << 16));
  b43legacy_write32(dev, B43legacy_MMIO_TSF_CFP_START,
     (beacon_int << 10));
 } else {
  b43legacy_write16(dev, 0x606, (beacon_int >> 6));
  b43legacy_write16(dev, 0x610, beacon_int);
 }
 b43legacy_time_unlock(dev);
 b43legacydbg(dev->wl, "Set beacon interval to %u\n", beacon_int);
}
