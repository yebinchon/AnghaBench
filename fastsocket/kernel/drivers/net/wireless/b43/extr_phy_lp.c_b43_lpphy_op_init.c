
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct b43_wldev {int wl; TYPE_1__* dev; } ;
struct TYPE_2__ {scalar_t__ bus_type; } ;


 scalar_t__ B43_BUS_SSB ;
 int EOPNOTSUPP ;
 int b43_lpphy_op_switch_channel (struct b43_wldev*,int) ;
 int b43dbg (int ,char*,int) ;
 int b43err (int ,char*) ;
 int lpphy_baseband_init (struct b43_wldev*) ;
 int lpphy_calibrate_rc (struct b43_wldev*) ;
 int lpphy_calibration (struct b43_wldev*) ;
 int lpphy_radio_init (struct b43_wldev*) ;
 int lpphy_read_band_sprom (struct b43_wldev*) ;
 int lpphy_tx_pctl_init (struct b43_wldev*) ;

__attribute__((used)) static int b43_lpphy_op_init(struct b43_wldev *dev)
{
 int err;

 if (dev->dev->bus_type != B43_BUS_SSB) {
  b43err(dev->wl, "LP-PHY is supported only on SSB!\n");
  return -EOPNOTSUPP;
 }

 lpphy_read_band_sprom(dev);
 lpphy_baseband_init(dev);
 lpphy_radio_init(dev);
 lpphy_calibrate_rc(dev);
 err = b43_lpphy_op_switch_channel(dev, 7);
 if (err) {
  b43dbg(dev->wl, "Switch to channel 7 failed, error = %d.\n",
         err);
 }
 lpphy_tx_pctl_init(dev);
 lpphy_calibration(dev);


 return 0;
}
