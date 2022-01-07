
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int phy_locked; } ;
struct b43legacy_wldev {int wl; TYPE_3__* dev; TYPE_1__ phy; } ;
struct TYPE_5__ {int revision; } ;
struct TYPE_6__ {TYPE_2__ id; } ;


 int B43legacy_WARN_ON (int) ;
 int NL80211_IFTYPE_AP ;
 int b43legacy_is_mode (int ,int ) ;
 int b43legacy_mac_suspend (struct b43legacy_wldev*) ;
 int b43legacy_power_saving_ctl_bits (struct b43legacy_wldev*,int,int) ;

void b43legacy_phy_lock(struct b43legacy_wldev *dev)
{





 if (dev->dev->id.revision < 3) {
  b43legacy_mac_suspend(dev);
 } else {
  if (!b43legacy_is_mode(dev->wl, NL80211_IFTYPE_AP))
   b43legacy_power_saving_ctl_bits(dev, -1, 1);
 }
}
