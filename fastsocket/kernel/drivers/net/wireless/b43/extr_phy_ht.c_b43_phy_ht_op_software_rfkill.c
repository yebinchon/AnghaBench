
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int radio_ver; int channel; } ;
struct b43_wldev {TYPE_1__ phy; int wl; } ;


 int B43_MACCTL_ENABLED ;
 int B43_MMIO_MACCTL ;
 int B43_PHY_HT_RF_CTL1 ;
 int B43_WARN_ON (int) ;
 int b43_phy_mask (struct b43_wldev*,int ,int ) ;
 int b43_phy_maskset (struct b43_wldev*,int ,int ,int) ;
 int b43_radio_2059_init (struct b43_wldev*) ;
 int b43_read32 (struct b43_wldev*,int ) ;
 int b43_switch_channel (struct b43_wldev*,int ) ;
 int b43err (int ,char*) ;

__attribute__((used)) static void b43_phy_ht_op_software_rfkill(struct b43_wldev *dev,
     bool blocked)
{
 if (b43_read32(dev, B43_MMIO_MACCTL) & B43_MACCTL_ENABLED)
  b43err(dev->wl, "MAC not suspended\n");






 if (blocked) {
  b43_phy_mask(dev, B43_PHY_HT_RF_CTL1, 0);
 } else {
  b43_phy_mask(dev, B43_PHY_HT_RF_CTL1, 0);
  b43_phy_maskset(dev, B43_PHY_HT_RF_CTL1, 0, 0x1);
  b43_phy_mask(dev, B43_PHY_HT_RF_CTL1, 0);
  b43_phy_maskset(dev, B43_PHY_HT_RF_CTL1, 0, 0x2);

  if (dev->phy.radio_ver == 0x2059)
   b43_radio_2059_init(dev);
  else
   B43_WARN_ON(1);

  b43_switch_channel(dev, dev->phy.channel);
 }
}
