
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_phy {struct b43_phy_ht* ht; } ;
struct b43_wldev {struct b43_phy phy; } ;
struct b43_phy_ht {int tx_pwr_ctl; int* bb_mult_save; scalar_t__* tx_pwr_idx; } ;


 scalar_t__ B43_PHY_HT_TXPCTL_CMD_C1_INIT ;
 int memset (struct b43_phy_ht*,int ,int) ;

__attribute__((used)) static void b43_phy_ht_op_prepare_structs(struct b43_wldev *dev)
{
 struct b43_phy *phy = &dev->phy;
 struct b43_phy_ht *phy_ht = phy->ht;
 int i;

 memset(phy_ht, 0, sizeof(*phy_ht));

 phy_ht->tx_pwr_ctl = 1;
 for (i = 0; i < 3; i++)
  phy_ht->tx_pwr_idx[i] = B43_PHY_HT_TXPCTL_CMD_C1_INIT + 1;

 for (i = 0; i < 3; i++)
  phy_ht->bb_mult_save[i] = -1;
}
