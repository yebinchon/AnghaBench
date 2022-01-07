
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int rev; struct b43_phy_lp* lp; } ;
struct b43_wldev {TYPE_1__ phy; } ;
struct b43_phy_lp {scalar_t__ rc_cap; } ;


 int B2063_TX_BB_SP3 ;
 int B43_LPPHY_LP_PHY_CTL ;
 int b43_phy_maskset (struct b43_wldev*,int ,int,int) ;
 int b43_radio_write (struct b43_wldev*,int ,int) ;
 int lpphy_set_rc_cap (struct b43_wldev*) ;

__attribute__((used)) static void lpphy_set_analog_filter(struct b43_wldev *dev, int channel)
{
 struct b43_phy_lp *lpphy = dev->phy.lp;
 u16 tmp = (channel == 14);

 if (dev->phy.rev < 2) {
  b43_phy_maskset(dev, B43_LPPHY_LP_PHY_CTL, 0xFCFF, tmp << 9);
  if ((dev->phy.rev == 1) && (lpphy->rc_cap))
   lpphy_set_rc_cap(dev);
 } else {
  b43_radio_write(dev, B2063_TX_BB_SP3, 0x3F);
 }
}
