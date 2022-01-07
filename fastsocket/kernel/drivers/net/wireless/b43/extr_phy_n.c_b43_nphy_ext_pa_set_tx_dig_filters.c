
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {int dummy; } ;


 int B43_PHY_N (int) ;
 int b43_phy_write (struct b43_wldev*,int ,int ) ;
 int ** tbl_tx_filter_coef_rev4 ;

__attribute__((used)) static void b43_nphy_ext_pa_set_tx_dig_filters(struct b43_wldev *dev)
{
 int i;
 for (i = 0; i < 15; i++)
  b43_phy_write(dev, B43_PHY_N(0x2C5 + i),
    tbl_tx_filter_coef_rev4[2][i]);
}
