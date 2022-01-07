
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct b43_phy {int radio_ver; int radio_rev; int channel; } ;
struct b43_wldev {TYPE_2__* dev; struct b43_phy phy; } ;
struct TYPE_4__ {TYPE_1__* bus_sprom; } ;
struct TYPE_3__ {int boardflags_lo; } ;


 int B43_BFL_RSSI ;
 int b43_calc_nrssi_slope (struct b43_wldev*) ;
 int b43_mac_enable (struct b43_wldev*) ;
 int b43_mac_suspend (struct b43_wldev*) ;
 int b43_switch_channel (struct b43_wldev*,int) ;

__attribute__((used)) static void b43_gphy_op_pwork_60sec(struct b43_wldev *dev)
{
 struct b43_phy *phy = &dev->phy;

 if (!(dev->dev->bus_sprom->boardflags_lo & B43_BFL_RSSI))
  return;

 b43_mac_suspend(dev);
 b43_calc_nrssi_slope(dev);
 if ((phy->radio_ver == 0x2050) && (phy->radio_rev == 8)) {
  u8 old_chan = phy->channel;


  if (old_chan >= 8)
   b43_switch_channel(dev, 1);
  else
   b43_switch_channel(dev, 13);
  b43_switch_channel(dev, old_chan);
 }
 b43_mac_enable(dev);
}
