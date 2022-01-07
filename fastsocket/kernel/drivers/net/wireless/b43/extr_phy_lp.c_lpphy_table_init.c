
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int rev; } ;
struct b43_wldev {TYPE_1__ phy; } ;


 int b43_lpphy_op_get_default_chan (struct b43_wldev*) ;
 int channel2freq_lp (int ) ;
 int lpphy_adjust_gain_table (struct b43_wldev*,int ) ;
 int lpphy_init_tx_gain_table (struct b43_wldev*) ;
 int lpphy_rev0_1_table_init (struct b43_wldev*) ;
 int lpphy_rev2plus_table_init (struct b43_wldev*) ;

__attribute__((used)) static void lpphy_table_init(struct b43_wldev *dev)
{
 u32 freq = channel2freq_lp(b43_lpphy_op_get_default_chan(dev));

 if (dev->phy.rev < 2)
  lpphy_rev0_1_table_init(dev);
 else
  lpphy_rev2plus_table_init(dev);

 lpphy_init_tx_gain_table(dev);

 if (dev->phy.rev < 2)
  lpphy_adjust_gain_table(dev, freq);
}
