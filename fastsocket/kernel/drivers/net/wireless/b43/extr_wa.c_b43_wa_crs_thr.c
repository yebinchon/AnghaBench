
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {int dummy; } ;


 int B43_PHY_CRS0 ;
 int b43_phy_maskset (struct b43_wldev*,int ,int,int) ;

__attribute__((used)) static void b43_wa_crs_thr(struct b43_wldev *dev)
{
 b43_phy_maskset(dev, B43_PHY_CRS0, ~0x03C0, 0xD000);
}
