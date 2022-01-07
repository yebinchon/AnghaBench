
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rev; } ;
struct b43_wldev {TYPE_1__ phy; } ;


 int B43_LPPHY_AFE_DDFS ;
 int B43_LPPHY_RF_OVERRIDE_0 ;
 int B43_LPPHY_RF_OVERRIDE_2 ;
 int B43_LPPHY_RF_OVERRIDE_2_VAL ;
 int B43_LPPHY_RF_OVERRIDE_VAL_0 ;
 int b43_phy_mask (struct b43_wldev*,int ,int) ;
 int b43_phy_set (struct b43_wldev*,int ,int) ;

__attribute__((used)) static void b43_lpphy_op_software_rfkill(struct b43_wldev *dev,
      bool blocked)
{

 if (blocked) {
  if (dev->phy.rev >= 2) {
   b43_phy_mask(dev, B43_LPPHY_RF_OVERRIDE_VAL_0, 0x83FF);
   b43_phy_set(dev, B43_LPPHY_RF_OVERRIDE_0, 0x1F00);
   b43_phy_mask(dev, B43_LPPHY_AFE_DDFS, 0x80FF);
   b43_phy_mask(dev, B43_LPPHY_RF_OVERRIDE_2_VAL, 0xDFFF);
   b43_phy_set(dev, B43_LPPHY_RF_OVERRIDE_2, 0x0808);
  } else {
   b43_phy_mask(dev, B43_LPPHY_RF_OVERRIDE_VAL_0, 0xE0FF);
   b43_phy_set(dev, B43_LPPHY_RF_OVERRIDE_0, 0x1F00);
   b43_phy_mask(dev, B43_LPPHY_RF_OVERRIDE_2_VAL, 0xFCFF);
   b43_phy_set(dev, B43_LPPHY_RF_OVERRIDE_2, 0x0018);
  }
 } else {
  b43_phy_mask(dev, B43_LPPHY_RF_OVERRIDE_0, 0xE0FF);
  if (dev->phy.rev >= 2)
   b43_phy_mask(dev, B43_LPPHY_RF_OVERRIDE_2, 0xF7F7);
  else
   b43_phy_mask(dev, B43_LPPHY_RF_OVERRIDE_2, 0xFFE7);
 }
}
