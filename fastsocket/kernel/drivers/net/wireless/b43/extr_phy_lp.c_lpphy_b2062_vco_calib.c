
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {int dummy; } ;


 int B2062_S_RFPLL_CTL21 ;
 int b43_radio_write (struct b43_wldev*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void lpphy_b2062_vco_calib(struct b43_wldev *dev)
{
 b43_radio_write(dev, B2062_S_RFPLL_CTL21, 0x42);
 b43_radio_write(dev, B2062_S_RFPLL_CTL21, 0x62);
 udelay(200);
}
