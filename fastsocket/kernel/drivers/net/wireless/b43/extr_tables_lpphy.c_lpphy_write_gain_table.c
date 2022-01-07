
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lpphy_tx_gain_table_entry {int dummy; } ;
struct TYPE_2__ {int rev; } ;
struct b43_wldev {TYPE_1__ phy; } ;


 int lpphy_rev0_1_write_gain_table (struct b43_wldev*,int,struct lpphy_tx_gain_table_entry) ;
 int lpphy_rev2plus_write_gain_table (struct b43_wldev*,int,struct lpphy_tx_gain_table_entry) ;

void lpphy_write_gain_table(struct b43_wldev *dev, int offset,
       struct lpphy_tx_gain_table_entry data)
{
 if (dev->phy.rev >= 2)
  lpphy_rev2plus_write_gain_table(dev, offset, data);
 else
  lpphy_rev0_1_write_gain_table(dev, offset, data);
}
