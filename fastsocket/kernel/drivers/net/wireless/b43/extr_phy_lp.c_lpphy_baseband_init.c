
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rev; } ;
struct b43_wldev {TYPE_1__ phy; } ;


 int lpphy_baseband_rev0_1_init (struct b43_wldev*) ;
 int lpphy_baseband_rev2plus_init (struct b43_wldev*) ;
 int lpphy_table_init (struct b43_wldev*) ;

__attribute__((used)) static void lpphy_baseband_init(struct b43_wldev *dev)
{
 lpphy_table_init(dev);
 if (dev->phy.rev >= 2)
  lpphy_baseband_rev2plus_init(dev);
 else
  lpphy_baseband_rev0_1_init(dev);
}
