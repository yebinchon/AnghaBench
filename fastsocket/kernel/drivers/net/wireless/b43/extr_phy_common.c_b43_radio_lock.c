
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int radio_locked; } ;
struct b43_wldev {TYPE_1__ phy; } ;


 int B43_MACCTL_RADIOLOCK ;
 int B43_MMIO_MACCTL ;
 int B43_WARN_ON (int) ;
 int b43_read32 (struct b43_wldev*,int ) ;
 int b43_write32 (struct b43_wldev*,int ,int ) ;
 int udelay (int) ;

void b43_radio_lock(struct b43_wldev *dev)
{
 u32 macctl;






 macctl = b43_read32(dev, B43_MMIO_MACCTL);
 macctl |= B43_MACCTL_RADIOLOCK;
 b43_write32(dev, B43_MMIO_MACCTL, macctl);


 b43_read32(dev, B43_MMIO_MACCTL);
 udelay(10);
}
