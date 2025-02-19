
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct b43_wldev {int wl; } ;


 int B43_LPPHY_AFE_DDFS ;
 int B43_LPPHY_RF_OVERRIDE_2_VAL ;
 int B43_LPPHY_RF_OVERRIDE_VAL_0 ;
 int B43_LPPHY_RX_GAIN_CTL_OVERRIDE_VAL ;
 int B43_PHY_OFDM (int) ;
 scalar_t__ IEEE80211_BAND_2GHZ ;
 scalar_t__ b43_current_band (int ) ;
 int b43_phy_maskset (struct b43_wldev*,int ,int,int) ;
 int b43_phy_write (struct b43_wldev*,int ,int) ;

__attribute__((used)) static void lpphy_rev2plus_set_rx_gain(struct b43_wldev *dev, u32 gain)
{
 u16 low_gain = gain & 0xFFFF;
 u16 high_gain = (gain >> 16) & 0xF;
 u16 ext_lna = (gain >> 21) & 0x1;
 u16 trsw = ~(gain >> 20) & 0x1;
 u16 tmp;

 b43_phy_maskset(dev, B43_LPPHY_RF_OVERRIDE_VAL_0, 0xFFFE, trsw);
 b43_phy_maskset(dev, B43_LPPHY_RF_OVERRIDE_2_VAL,
   0xFDFF, ext_lna << 9);
 b43_phy_maskset(dev, B43_LPPHY_RF_OVERRIDE_2_VAL,
   0xFBFF, ext_lna << 10);
 b43_phy_write(dev, B43_LPPHY_RX_GAIN_CTL_OVERRIDE_VAL, low_gain);
 b43_phy_maskset(dev, B43_LPPHY_AFE_DDFS, 0xFFF0, high_gain);
 if (b43_current_band(dev->wl) == IEEE80211_BAND_2GHZ) {
  tmp = (gain >> 2) & 0x3;
  b43_phy_maskset(dev, B43_LPPHY_RF_OVERRIDE_2_VAL,
    0xE7FF, tmp<<11);
  b43_phy_maskset(dev, B43_PHY_OFDM(0xE6), 0xFFE7, tmp << 3);
 }
}
