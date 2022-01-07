
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int const u16 ;
struct b43legacy_wldev {int dummy; } ;


 int b43legacy_phy_write (struct b43legacy_wldev*,int,int) ;
 int b43legacy_radio_read16 (struct b43legacy_wldev*,int) ;

void b43legacy_radio_set_tx_iq(struct b43legacy_wldev *dev)
{
 static const u8 data_high[5] = { 0x00, 0x40, 0x80, 0x90, 0xD0 };
 static const u8 data_low[5] = { 0x00, 0x01, 0x05, 0x06, 0x0A };
 u16 tmp = b43legacy_radio_read16(dev, 0x001E);
 int i;
 int j;

 for (i = 0; i < 5; i++) {
  for (j = 0; j < 5; j++) {
   if (tmp == (data_high[i] | data_low[j])) {
    b43legacy_phy_write(dev, 0x0069, (i - j) << 8 |
          0x00C0);
    return;
   }
  }
 }
}
