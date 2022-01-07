
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43_phy {int radio_rev; } ;
struct b43_wldev {int wl; struct b43_phy phy; } ;


 int R2057_RCCAL_DONE_OSCCAP ;
 int R2057_RCCAL_MASTER ;
 int R2057_RCCAL_START_R1_Q1_P1 ;
 int R2057_RCCAL_TRC0 ;
 int R2057_RCCAL_X1 ;
 int b43_radio_read (struct b43_wldev*,int ) ;
 int b43_radio_wait_value (struct b43_wldev*,int ,int,int,int,int) ;
 int b43_radio_write (struct b43_wldev*,int,int) ;
 int b43dbg (int ,char*) ;
 int b43err (int ,char*) ;

__attribute__((used)) static u16 b43_radio_2057_rccal(struct b43_wldev *dev)
{
 struct b43_phy *phy = &dev->phy;
 bool special = (phy->radio_rev == 3 || phy->radio_rev == 4 ||
   phy->radio_rev == 6);
 u16 tmp;

 if (special) {
  b43_radio_write(dev, R2057_RCCAL_MASTER, 0x61);
  b43_radio_write(dev, R2057_RCCAL_TRC0, 0xC0);
 } else {
  b43_radio_write(dev, 0x1AE, 0x61);
  b43_radio_write(dev, R2057_RCCAL_TRC0, 0xE1);
 }
 b43_radio_write(dev, R2057_RCCAL_X1, 0x6E);
 b43_radio_write(dev, R2057_RCCAL_START_R1_Q1_P1, 0x55);
 if (!b43_radio_wait_value(dev, R2057_RCCAL_DONE_OSCCAP, 1, 1, 500,
      5000000))
  b43dbg(dev->wl, "Radio 0x2057 rccal timeout\n");
 b43_radio_write(dev, R2057_RCCAL_START_R1_Q1_P1, 0x15);
 if (special) {
  b43_radio_write(dev, R2057_RCCAL_MASTER, 0x69);
  b43_radio_write(dev, R2057_RCCAL_TRC0, 0xB0);
 } else {
  b43_radio_write(dev, 0x1AE, 0x69);
  b43_radio_write(dev, R2057_RCCAL_TRC0, 0xD5);
 }
 b43_radio_write(dev, R2057_RCCAL_X1, 0x6E);
 b43_radio_write(dev, R2057_RCCAL_START_R1_Q1_P1, 0x55);
 if (!b43_radio_wait_value(dev, R2057_RCCAL_DONE_OSCCAP, 1, 1, 500,
      5000000))
  b43dbg(dev->wl, "Radio 0x2057 rccal timeout\n");
 b43_radio_write(dev, R2057_RCCAL_START_R1_Q1_P1, 0x15);
 if (special) {
  b43_radio_write(dev, R2057_RCCAL_MASTER, 0x73);
  b43_radio_write(dev, R2057_RCCAL_X1, 0x28);
  b43_radio_write(dev, R2057_RCCAL_TRC0, 0xB0);
 } else {
  b43_radio_write(dev, 0x1AE, 0x73);
  b43_radio_write(dev, R2057_RCCAL_X1, 0x6E);
  b43_radio_write(dev, R2057_RCCAL_TRC0, 0x99);
 }
 b43_radio_write(dev, R2057_RCCAL_START_R1_Q1_P1, 0x55);
 if (!b43_radio_wait_value(dev, R2057_RCCAL_DONE_OSCCAP, 1, 1, 500,
      5000000)) {
  b43err(dev->wl, "Radio 0x2057 rcal timeout\n");
  return 0;
 }
 tmp = b43_radio_read(dev, R2057_RCCAL_DONE_OSCCAP);
 b43_radio_write(dev, R2057_RCCAL_START_R1_Q1_P1, 0x15);
 return tmp;
}
