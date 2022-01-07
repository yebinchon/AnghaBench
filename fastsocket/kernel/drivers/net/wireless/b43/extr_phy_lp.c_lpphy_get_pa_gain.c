
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43_wldev {int dummy; } ;


 int B43_PHY_OFDM (int) ;
 int b43_phy_read (struct b43_wldev*,int ) ;

__attribute__((used)) static u16 lpphy_get_pa_gain(struct b43_wldev *dev)
{
 return b43_phy_read(dev, B43_PHY_OFDM(0xFB)) & 0x7F;
}
