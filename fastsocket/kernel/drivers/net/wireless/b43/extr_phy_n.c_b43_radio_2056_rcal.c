
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct b43_phy {int rev; } ;
struct b43_wldev {int wl; struct b43_phy phy; } ;


 int B2056_SYN_PLL_MAST2 ;
 int B2056_SYN_RCAL_CODE_OUT ;
 int B2056_SYN_RCAL_MASTER ;
 int b43_radio_read (struct b43_wldev*,int ) ;
 int b43_radio_wait_value (struct b43_wldev*,int ,int,int,int,int) ;
 int b43_radio_write (struct b43_wldev*,int ,int) ;
 int b43err (int ,char*) ;
 int udelay (int) ;

__attribute__((used)) static u8 b43_radio_2056_rcal(struct b43_wldev *dev)
{
 struct b43_phy *phy = &dev->phy;
 u16 mast2, tmp;

 if (phy->rev != 3)
  return 0;

 mast2 = b43_radio_read(dev, B2056_SYN_PLL_MAST2);
 b43_radio_write(dev, B2056_SYN_PLL_MAST2, mast2 | 0x7);

 udelay(10);
 b43_radio_write(dev, B2056_SYN_RCAL_MASTER, 0x01);
 udelay(10);
 b43_radio_write(dev, B2056_SYN_RCAL_MASTER, 0x09);

 if (!b43_radio_wait_value(dev, B2056_SYN_RCAL_CODE_OUT, 0x80, 0x80, 100,
      1000000)) {
  b43err(dev->wl, "Radio recalibration timeout\n");
  return 0;
 }

 b43_radio_write(dev, B2056_SYN_RCAL_MASTER, 0x01);
 tmp = b43_radio_read(dev, B2056_SYN_RCAL_CODE_OUT);
 b43_radio_write(dev, B2056_SYN_RCAL_MASTER, 0x00);

 b43_radio_write(dev, B2056_SYN_PLL_MAST2, mast2);

 return tmp & 0x1f;
}
