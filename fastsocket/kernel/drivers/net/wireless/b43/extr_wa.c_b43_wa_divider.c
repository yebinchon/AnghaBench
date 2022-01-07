
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {int dummy; } ;


 int b43_phy_mask (struct b43_wldev*,int,int) ;
 int b43_phy_write (struct b43_wldev*,int,int) ;

__attribute__((used)) static void b43_wa_divider(struct b43_wldev *dev)
{
 b43_phy_mask(dev, 0x002B, ~0x0100);
 b43_phy_write(dev, 0x008E, 0x58C1);
}
