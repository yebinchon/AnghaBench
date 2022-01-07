
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {int dummy; } ;


 int B43_PHY_LCN_AFE_CTL1 ;
 int B43_PHY_LCN_AFE_CTL2 ;
 int b43_phy_mask (struct b43_wldev*,int ,int) ;
 int b43_phy_set (struct b43_wldev*,int ,int) ;

__attribute__((used)) static void b43_phy_lcn_op_switch_analog(struct b43_wldev *dev, bool on)
{
 if (on) {
  b43_phy_mask(dev, B43_PHY_LCN_AFE_CTL1, ~0x7);
 } else {
  b43_phy_set(dev, B43_PHY_LCN_AFE_CTL2, 0x7);
  b43_phy_set(dev, B43_PHY_LCN_AFE_CTL1, 0x7);
 }
}
