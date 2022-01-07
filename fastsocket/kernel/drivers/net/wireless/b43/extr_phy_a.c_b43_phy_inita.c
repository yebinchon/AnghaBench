
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct b43_phy {scalar_t__ type; int rev; scalar_t__ gmode; } ;
struct b43_wldev {TYPE_2__* dev; struct b43_phy phy; } ;
struct TYPE_4__ {scalar_t__ board_vendor; scalar_t__ board_type; TYPE_1__* bus_sprom; } ;
struct TYPE_3__ {int boardflags_lo; } ;


 int B43_BFL_PACTRL ;
 scalar_t__ B43_PHYTYPE_A ;
 scalar_t__ B43_PHYTYPE_G ;
 int B43_PHY_CRS0 ;
 int B43_PHY_CRS0_EN ;
 int B43_PHY_ENCORE ;
 int B43_PHY_ENCORE_EN ;
 int B43_PHY_OFDM (int) ;
 int B43_WARN_ON (int) ;
 scalar_t__ SSB_BOARDVENDOR_BCM ;
 scalar_t__ SSB_BOARD_BU4306 ;
 scalar_t__ SSB_BOARD_BU4309 ;
 int b43_phy_mask (struct b43_wldev*,int,int) ;
 int b43_phy_maskset (struct b43_wldev*,int,int,int) ;
 int b43_phy_read (struct b43_wldev*,int) ;
 int b43_phy_rssiagc (struct b43_wldev*,int ) ;
 int b43_phy_set (struct b43_wldev*,int,int) ;
 int b43_phy_ww (struct b43_wldev*) ;
 int b43_radio_init2060 (struct b43_wldev*) ;
 int b43_wa_all (struct b43_wldev*) ;
 int hardware_pctl_init_aphy (struct b43_wldev*) ;
 int might_sleep () ;

void b43_phy_inita(struct b43_wldev *dev)
{
 struct b43_phy *phy = &dev->phy;




 B43_WARN_ON((phy->type != B43_PHYTYPE_A) &&
      (phy->type != B43_PHYTYPE_G));

 might_sleep();

 if (phy->rev >= 6) {
  if (phy->type == B43_PHYTYPE_A)
   b43_phy_mask(dev, B43_PHY_OFDM(0x1B), ~0x1000);
  if (b43_phy_read(dev, B43_PHY_ENCORE) & B43_PHY_ENCORE_EN)
   b43_phy_set(dev, B43_PHY_ENCORE, 0x0010);
  else
   b43_phy_mask(dev, B43_PHY_ENCORE, ~0x1010);
 }

 b43_wa_all(dev);

 if (phy->type == B43_PHYTYPE_A) {
  if (phy->gmode && (phy->rev < 3))
   b43_phy_set(dev, 0x0034, 0x0001);
  b43_phy_rssiagc(dev, 0);

  b43_phy_set(dev, B43_PHY_CRS0, B43_PHY_CRS0_EN);

  b43_radio_init2060(dev);

  if ((dev->dev->board_vendor == SSB_BOARDVENDOR_BCM) &&
      ((dev->dev->board_type == SSB_BOARD_BU4306) ||
       (dev->dev->board_type == SSB_BOARD_BU4309))) {
   ;
  }

  if (phy->rev >= 3)
   b43_phy_ww(dev);

  hardware_pctl_init_aphy(dev);


 }

 if ((phy->type == B43_PHYTYPE_G) &&
     (dev->dev->bus_sprom->boardflags_lo & B43_BFL_PACTRL)) {
  b43_phy_maskset(dev, B43_PHY_OFDM(0x6E), 0xE000, 0x3CF);
 }
}
