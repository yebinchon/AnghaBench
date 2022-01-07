
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {int dummy; } ;


 int B43_LPPHY_AFE_DDFS ;
 int B43_LPPHY_LP_PHY_CTL ;
 int b43_phy_mask (struct b43_wldev*,int ,int) ;

__attribute__((used)) static void lpphy_stop_ddfs(struct b43_wldev *dev)
{
 b43_phy_mask(dev, B43_LPPHY_AFE_DDFS, 0xFFFD);
 b43_phy_mask(dev, B43_LPPHY_LP_PHY_CTL, 0xFFDF);
}
