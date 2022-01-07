
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43_wldev {int dummy; } ;


 int B43_LPPHY_RF_OVERRIDE_0 ;
 int B43_LPPHY_RF_OVERRIDE_VAL_0 ;
 int b43_phy_maskset (struct b43_wldev*,int ,int,int) ;
 int b43_phy_set (struct b43_wldev*,int ,int) ;

__attribute__((used)) static void lpphy_set_trsw_over(struct b43_wldev *dev, bool tx, bool rx)
{
 u16 trsw = (tx << 1) | rx;
 b43_phy_maskset(dev, B43_LPPHY_RF_OVERRIDE_VAL_0, 0xFFFC, trsw);
 b43_phy_set(dev, B43_LPPHY_RF_OVERRIDE_0, 0x3);
}
