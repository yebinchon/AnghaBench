
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {scalar_t__ type; } ;
struct b43_wldev {TYPE_1__ phy; TYPE_2__* dev; } ;
struct TYPE_4__ {int chip_id; } ;


 int B43_MMIO_TSF_CLK_FRAC_HIGH ;
 int B43_MMIO_TSF_CLK_FRAC_LOW ;
 scalar_t__ B43_PHYTYPE_LCN ;
 int b43_write16 (struct b43_wldev*,int ,int) ;

__attribute__((used)) static void b43_phy_switch_macfreq(struct b43_wldev *dev, u8 spurmode)
{
 if (dev->dev->chip_id == 43224 || dev->dev->chip_id == 43225) {
  switch (spurmode) {
  case 2:
   b43_write16(dev, B43_MMIO_TSF_CLK_FRAC_LOW, 0x2082);
   b43_write16(dev, B43_MMIO_TSF_CLK_FRAC_HIGH, 0x8);
   break;
  case 1:
   b43_write16(dev, B43_MMIO_TSF_CLK_FRAC_LOW, 0x5341);
   b43_write16(dev, B43_MMIO_TSF_CLK_FRAC_HIGH, 0x8);
   break;
  default:
   b43_write16(dev, B43_MMIO_TSF_CLK_FRAC_LOW, 0x8889);
   b43_write16(dev, B43_MMIO_TSF_CLK_FRAC_HIGH, 0x8);
   break;
  }
 } else if (dev->phy.type == B43_PHYTYPE_LCN) {
  switch (spurmode) {
  case 1:
   b43_write16(dev, B43_MMIO_TSF_CLK_FRAC_LOW, 0x7CE0);
   b43_write16(dev, B43_MMIO_TSF_CLK_FRAC_HIGH, 0xC);
   break;
  default:
   b43_write16(dev, B43_MMIO_TSF_CLK_FRAC_LOW, 0xCCCD);
   b43_write16(dev, B43_MMIO_TSF_CLK_FRAC_HIGH, 0xC);
   break;
  }
 }
}
