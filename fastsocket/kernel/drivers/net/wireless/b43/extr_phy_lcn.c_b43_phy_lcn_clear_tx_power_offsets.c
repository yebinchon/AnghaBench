
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct b43_wldev {int dummy; } ;


 int B43_PHY_LCN_TABLE_ADDR ;
 int B43_PHY_LCN_TABLE_DATAHI ;
 int B43_PHY_LCN_TABLE_DATALO ;
 int b43_phy_write (struct b43_wldev*,int ,int) ;

__attribute__((used)) static void b43_phy_lcn_clear_tx_power_offsets(struct b43_wldev *dev)
{
 u8 i;

 if (1) {
  b43_phy_write(dev, B43_PHY_LCN_TABLE_ADDR, (0x7 << 10) | 0x340);
  for (i = 0; i < 30; i++) {
   b43_phy_write(dev, B43_PHY_LCN_TABLE_DATAHI, 0);
   b43_phy_write(dev, B43_PHY_LCN_TABLE_DATALO, 0);
  }
 }

 b43_phy_write(dev, B43_PHY_LCN_TABLE_ADDR, (0x7 << 10) | 0x80);
 for (i = 0; i < 64; i++) {
  b43_phy_write(dev, B43_PHY_LCN_TABLE_DATAHI, 0);
  b43_phy_write(dev, B43_PHY_LCN_TABLE_DATALO, 0);
 }
}
