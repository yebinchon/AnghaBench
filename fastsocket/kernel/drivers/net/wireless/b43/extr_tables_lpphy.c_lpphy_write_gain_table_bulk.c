
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpphy_tx_gain_table_entry {int dummy; } ;
struct b43_wldev {int dummy; } ;


 int lpphy_write_gain_table (struct b43_wldev*,int,struct lpphy_tx_gain_table_entry) ;

void lpphy_write_gain_table_bulk(struct b43_wldev *dev, int offset, int count,
     struct lpphy_tx_gain_table_entry *table)
{
 int i;

 for (i = offset; i < count; i++)
  lpphy_write_gain_table(dev, i, table[i]);
}
