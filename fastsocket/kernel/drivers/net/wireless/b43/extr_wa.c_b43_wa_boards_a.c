
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int rev; } ;
struct b43_wldev {TYPE_2__ phy; TYPE_1__* dev; } ;
struct TYPE_3__ {scalar_t__ board_vendor; scalar_t__ board_type; int board_rev; } ;


 int B43_OFDMTAB_DC ;
 int B43_OFDMTAB_UNKNOWN_APHY ;
 scalar_t__ SSB_BOARDVENDOR_BCM ;
 scalar_t__ SSB_BOARD_BU4306 ;
 scalar_t__ SSB_BOARD_MP4318 ;
 int b43_ofdmtab_write16 (struct b43_wldev*,int ,int,int) ;
 int b43_phy_write (struct b43_wldev*,int,int) ;

__attribute__((used)) static void b43_wa_boards_a(struct b43_wldev *dev)
{
 if (dev->dev->board_vendor == SSB_BOARDVENDOR_BCM &&
     dev->dev->board_type == SSB_BOARD_BU4306 &&
     dev->dev->board_rev < 0x30) {
  b43_phy_write(dev, 0x0010, 0xE000);
  b43_phy_write(dev, 0x0013, 0x0140);
  b43_phy_write(dev, 0x0014, 0x0280);
 } else {
  if (dev->dev->board_type == SSB_BOARD_MP4318 &&
      dev->dev->board_rev < 0x20) {
   b43_phy_write(dev, 0x0013, 0x0210);
   b43_phy_write(dev, 0x0014, 0x0840);
  } else {
   b43_phy_write(dev, 0x0013, 0x0140);
   b43_phy_write(dev, 0x0014, 0x0280);
  }
  if (dev->phy.rev <= 4)
   b43_phy_write(dev, 0x0010, 0xE000);
  else
   b43_phy_write(dev, 0x0010, 0x2000);
  b43_ofdmtab_write16(dev, B43_OFDMTAB_DC, 1, 0x0039);
  b43_ofdmtab_write16(dev, B43_OFDMTAB_UNKNOWN_APHY, 7, 0x0040);
 }
}
