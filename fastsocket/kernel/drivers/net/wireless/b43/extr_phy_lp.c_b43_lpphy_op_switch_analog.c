
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {int dummy; } ;


 int B43_LPPHY_AFE_CTL_OVR ;
 int B43_LPPHY_AFE_CTL_OVRVAL ;
 int b43_phy_mask (struct b43_wldev*,int ,int) ;
 int b43_phy_set (struct b43_wldev*,int ,int) ;

__attribute__((used)) static void b43_lpphy_op_switch_analog(struct b43_wldev *dev, bool on)
{
       if (on) {
               b43_phy_mask(dev, B43_LPPHY_AFE_CTL_OVR, 0xfff8);
       } else {
               b43_phy_set(dev, B43_LPPHY_AFE_CTL_OVRVAL, 0x0007);
               b43_phy_set(dev, B43_LPPHY_AFE_CTL_OVR, 0x0007);
       }
}
