
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int phy_locked; } ;
struct b43_wldev {int wl; TYPE_2__* dev; TYPE_1__ phy; } ;
struct TYPE_4__ {int core_rev; } ;


 int B43_PS_AWAKE ;
 int B43_WARN_ON (int) ;
 int NL80211_IFTYPE_AP ;
 int b43_is_mode (int ,int ) ;
 int b43_power_saving_ctl_bits (struct b43_wldev*,int ) ;

void b43_phy_lock(struct b43_wldev *dev)
{




 B43_WARN_ON(dev->dev->core_rev < 3);

 if (!b43_is_mode(dev->wl, NL80211_IFTYPE_AP))
  b43_power_saving_ctl_bits(dev, B43_PS_AWAKE);
}
