
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct b43_wldev {int dummy; } ;


 int ARRAY_SIZE (int*) ;
 int B43_PHY_EXTG (int) ;
 int b43_phy_write (struct b43_wldev*,int ,int ) ;

__attribute__((used)) static void b43_phy_ht_zero_extg(struct b43_wldev *dev)
{
 u8 i, j;
 u16 base[] = { 0x40, 0x60, 0x80 };

 for (i = 0; i < ARRAY_SIZE(base); i++) {
  for (j = 0; j < 4; j++)
   b43_phy_write(dev, B43_PHY_EXTG(base[i] + j), 0);
 }

 for (i = 0; i < ARRAY_SIZE(base); i++)
  b43_phy_write(dev, B43_PHY_EXTG(base[i] + 0xc), 0);
}
