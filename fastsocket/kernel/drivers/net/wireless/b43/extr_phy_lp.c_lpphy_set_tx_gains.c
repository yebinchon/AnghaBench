
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct lpphy_tx_gains {int pad; int pga; int gm; int dac; } ;
struct TYPE_2__ {int rev; } ;
struct b43_wldev {TYPE_1__ phy; } ;


 int B43_LPPHY_TX_GAIN_CTL_OVERRIDE_VAL ;
 int B43_PHY_OFDM (int) ;
 int b43_phy_maskset (struct b43_wldev*,int ,int,int) ;
 int b43_phy_write (struct b43_wldev*,int ,int) ;
 int lpphy_enable_tx_gain_override (struct b43_wldev*) ;
 int lpphy_get_pa_gain (struct b43_wldev*) ;
 int lpphy_set_dac_gain (struct b43_wldev*,int ) ;

__attribute__((used)) static void lpphy_set_tx_gains(struct b43_wldev *dev,
          struct lpphy_tx_gains gains)
{
 u16 rf_gain, pa_gain;

 if (dev->phy.rev < 2) {
  rf_gain = (gains.pad << 7) | (gains.pga << 3) | gains.gm;
  b43_phy_maskset(dev, B43_LPPHY_TX_GAIN_CTL_OVERRIDE_VAL,
    0xF800, rf_gain);
 } else {
  pa_gain = lpphy_get_pa_gain(dev);
  b43_phy_write(dev, B43_LPPHY_TX_GAIN_CTL_OVERRIDE_VAL,
         (gains.pga << 8) | gains.gm);




  b43_phy_maskset(dev, B43_PHY_OFDM(0xFB),
    0x8000, gains.pad | (pa_gain << 6));
  b43_phy_write(dev, B43_PHY_OFDM(0xFC),
         (gains.pga << 8) | gains.gm);
  b43_phy_maskset(dev, B43_PHY_OFDM(0xFD),
    0x8000, gains.pad | (pa_gain << 8));
 }
 lpphy_set_dac_gain(dev, gains.dac);
 lpphy_enable_tx_gain_override(dev);
}
