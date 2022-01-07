
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {int dummy; } ;


 int B43_MACCTL_TBTTHOLD ;
 int B43_MMIO_MACCTL ;
 int b43_maskset32 (struct b43_wldev*,int ,int ,int ) ;
 int b43_read32 (struct b43_wldev*,int ) ;

__attribute__((used)) static void b43_time_lock(struct b43_wldev *dev)
{
 b43_maskset32(dev, B43_MMIO_MACCTL, ~0, B43_MACCTL_TBTTHOLD);

 b43_read32(dev, B43_MMIO_MACCTL);
}
