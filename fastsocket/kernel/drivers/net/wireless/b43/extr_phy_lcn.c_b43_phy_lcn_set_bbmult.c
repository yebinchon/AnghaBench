
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct b43_wldev {int dummy; } ;


 int B43_LCNTAB16 (int,int) ;
 int b43_lcntab_write (struct b43_wldev*,int ,int) ;

__attribute__((used)) static void b43_phy_lcn_set_bbmult(struct b43_wldev *dev, u8 m0)
{
 b43_lcntab_write(dev, B43_LCNTAB16(0x00, 0x57), m0 << 8);
}
