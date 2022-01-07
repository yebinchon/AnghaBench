
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {int wl; } ;


 int B43_MACCTL_ENABLED ;
 int B43_MMIO_MACCTL ;
 int B43_PHY_LCN_RF_CTL1 ;
 int B43_PHY_LCN_RF_CTL2 ;
 int B43_PHY_LCN_RF_CTL3 ;
 int B43_PHY_LCN_RF_CTL4 ;
 int B43_PHY_LCN_RF_CTL5 ;
 int B43_PHY_LCN_RF_CTL6 ;
 int B43_PHY_LCN_RF_CTL7 ;
 int b43_phy_mask (struct b43_wldev*,int ,int) ;
 int b43_phy_set (struct b43_wldev*,int ,int) ;
 int b43_read32 (struct b43_wldev*,int ) ;
 int b43err (int ,char*) ;

__attribute__((used)) static void b43_phy_lcn_op_software_rfkill(struct b43_wldev *dev,
     bool blocked)
{
 if (b43_read32(dev, B43_MMIO_MACCTL) & B43_MACCTL_ENABLED)
  b43err(dev->wl, "MAC not suspended\n");

 if (blocked) {
  b43_phy_mask(dev, B43_PHY_LCN_RF_CTL2, ~0x7c00);
  b43_phy_set(dev, B43_PHY_LCN_RF_CTL1, 0x1f00);

  b43_phy_mask(dev, B43_PHY_LCN_RF_CTL5, ~0x7f00);
  b43_phy_mask(dev, B43_PHY_LCN_RF_CTL4, ~0x2);
  b43_phy_set(dev, B43_PHY_LCN_RF_CTL3, 0x808);

  b43_phy_mask(dev, B43_PHY_LCN_RF_CTL7, ~0x8);
  b43_phy_set(dev, B43_PHY_LCN_RF_CTL6, 0x8);
 } else {
  b43_phy_mask(dev, B43_PHY_LCN_RF_CTL1, ~0x1f00);
  b43_phy_mask(dev, B43_PHY_LCN_RF_CTL3, ~0x808);
  b43_phy_mask(dev, B43_PHY_LCN_RF_CTL6, ~0x8);
 }
}
