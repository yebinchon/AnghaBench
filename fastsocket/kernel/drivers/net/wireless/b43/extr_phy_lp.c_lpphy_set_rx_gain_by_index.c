
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct b43_wldev {int dummy; } ;


 int B43_LPTAB16 (int,int ) ;
 int b43_lptab_read (struct b43_wldev*,int ) ;
 int lpphy_set_rx_gain (struct b43_wldev*,int ) ;

__attribute__((used)) static void lpphy_set_rx_gain_by_index(struct b43_wldev *dev, u16 idx)
{
 u32 gain = b43_lptab_read(dev, B43_LPTAB16(12, idx));
 lpphy_set_rx_gain(dev, gain);
}
