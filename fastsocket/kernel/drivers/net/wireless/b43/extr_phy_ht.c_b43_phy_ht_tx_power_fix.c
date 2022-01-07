
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct b43_wldev {int dummy; } ;


 int B43_HTTAB16 (int,int) ;
 int B43_HTTAB32 (int,int) ;
 int B43_HTTAB8 (int,int) ;
 int B43_PHY_EXTG (int) ;
 int b43_httab_read (struct b43_wldev*,int ) ;
 int b43_httab_write (struct b43_wldev*,int ,int) ;
 int b43_phy_mask (struct b43_wldev*,int ,int) ;

__attribute__((used)) static void b43_phy_ht_tx_power_fix(struct b43_wldev *dev)
{
 int i;

 for (i = 0; i < 3; i++) {
  u16 mask;
  u32 tmp = b43_httab_read(dev, B43_HTTAB32(26, 0xE8));

  if (0)
   mask = 0x2 << (i * 4);
  else
   mask = 0;
  b43_phy_mask(dev, B43_PHY_EXTG(0x108), mask);

  b43_httab_write(dev, B43_HTTAB16(7, 0x110 + i), tmp >> 16);
  b43_httab_write(dev, B43_HTTAB8(13, 0x63 + (i * 4)),
    tmp & 0xFF);
  b43_httab_write(dev, B43_HTTAB8(13, 0x73 + (i * 4)),
    tmp & 0xFF);
 }
}
