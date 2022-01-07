
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct b43_wldev {int dummy; } ;


 int B43_LPTAB16 (int ,int) ;
 int b43_lptab_write (struct b43_wldev*,int ,int) ;

__attribute__((used)) static void lpphy_set_bb_mult(struct b43_wldev *dev, u8 bb_mult)
{
 b43_lptab_write(dev, B43_LPTAB16(0, 87), (u16)bb_mult << 8);
}
