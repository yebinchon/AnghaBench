
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct b43_wldev {int dummy; } ;


 int B43_PHY_GTABCTL ;
 int B43_PHY_GTABDATA ;
 scalar_t__ b43_phy_read (struct b43_wldev*,int ) ;
 int b43_phy_write (struct b43_wldev*,int ,scalar_t__) ;

u16 b43_gtab_read(struct b43_wldev *dev, u16 table, u16 offset)
{
 b43_phy_write(dev, B43_PHY_GTABCTL, table + offset);
 return b43_phy_read(dev, B43_PHY_GTABDATA);
}
