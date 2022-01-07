
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rev; } ;
struct b43_wldev {TYPE_1__ phy; } ;


 int b43_nphy_gain_ctl_workarounds_rev1_2 (struct b43_wldev*) ;
 int b43_nphy_gain_ctl_workarounds_rev3plus (struct b43_wldev*) ;

__attribute__((used)) static void b43_nphy_gain_ctl_workarounds(struct b43_wldev *dev)
{
 if (dev->phy.rev >= 7)
  ;
 else if (dev->phy.rev >= 3)
  b43_nphy_gain_ctl_workarounds_rev3plus(dev);
 else
  b43_nphy_gain_ctl_workarounds_rev1_2(dev);
}
