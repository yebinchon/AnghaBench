
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct b43legacy_wldev {int dummy; } ;


 scalar_t__ b43legacy_phy_lo_g_deviation_subval (struct b43legacy_wldev*,int ) ;

__attribute__((used)) static u32 b43legacy_phy_lo_g_singledeviation(struct b43legacy_wldev *dev,
           u16 control)
{
 int i;
 u32 ret = 0;

 for (i = 0; i < 8; i++)
  ret += b43legacy_phy_lo_g_deviation_subval(dev, control);

 return ret;
}
