
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct b43_wldev {int wl; TYPE_1__* dev; } ;
struct TYPE_2__ {int core_rev; } ;


 int B43_MMIO_TSF_CFP_REP ;
 int B43_MMIO_TSF_CFP_START ;
 int b43_time_lock (struct b43_wldev*) ;
 int b43_time_unlock (struct b43_wldev*) ;
 int b43_write16 (struct b43_wldev*,int,int) ;
 int b43_write32 (struct b43_wldev*,int ,int) ;
 int b43dbg (int ,char*,int) ;

__attribute__((used)) static void b43_set_beacon_int(struct b43_wldev *dev, u16 beacon_int)
{
 b43_time_lock(dev);
 if (dev->dev->core_rev >= 3) {
  b43_write32(dev, B43_MMIO_TSF_CFP_REP, (beacon_int << 16));
  b43_write32(dev, B43_MMIO_TSF_CFP_START, (beacon_int << 10));
 } else {
  b43_write16(dev, 0x606, (beacon_int >> 6));
  b43_write16(dev, 0x610, beacon_int);
 }
 b43_time_unlock(dev);
 b43dbg(dev->wl, "Set beacon interval to %u\n", beacon_int);
}
