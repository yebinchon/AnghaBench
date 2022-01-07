
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {int dummy; } ;


 int lpphy_tx_pctl_init_hw (struct b43_wldev*) ;
 int lpphy_tx_pctl_init_sw (struct b43_wldev*) ;

__attribute__((used)) static void lpphy_tx_pctl_init(struct b43_wldev *dev)
{
 if (0 ) {
  lpphy_tx_pctl_init_hw(dev);
 } else {
  lpphy_tx_pctl_init_sw(dev);
 }
}
