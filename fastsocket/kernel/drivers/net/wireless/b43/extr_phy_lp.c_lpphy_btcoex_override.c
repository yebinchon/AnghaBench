
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {int dummy; } ;


 int B43_MMIO_BTCOEX_CTL ;
 int B43_MMIO_BTCOEX_TXCTL ;
 int b43_write16 (struct b43_wldev*,int ,int) ;

__attribute__((used)) static void lpphy_btcoex_override(struct b43_wldev *dev)
{
 b43_write16(dev, B43_MMIO_BTCOEX_CTL, 0x3);
 b43_write16(dev, B43_MMIO_BTCOEX_TXCTL, 0xFF);
}
