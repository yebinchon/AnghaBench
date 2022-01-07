
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rev; } ;
struct b43_wldev {TYPE_1__ phy; } ;


 int B43_LPPHY_AFE_CTL_OVR ;
 int B43_LPPHY_RF_OVERRIDE_2 ;
 int b43_phy_set (struct b43_wldev*,int ,int) ;

__attribute__((used)) static void lpphy_enable_tx_gain_override(struct b43_wldev *dev)
{
 if (dev->phy.rev < 2)
  b43_phy_set(dev, B43_LPPHY_RF_OVERRIDE_2, 0x100);
 else {
  b43_phy_set(dev, B43_LPPHY_RF_OVERRIDE_2, 0x80);
  b43_phy_set(dev, B43_LPPHY_RF_OVERRIDE_2, 0x4000);
 }
 b43_phy_set(dev, B43_LPPHY_AFE_CTL_OVR, 0x40);
}
