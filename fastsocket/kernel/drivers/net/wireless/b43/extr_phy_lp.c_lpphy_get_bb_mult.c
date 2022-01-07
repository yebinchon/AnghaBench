
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct b43_wldev {int dummy; } ;


 int B43_LPTAB16 (int ,int) ;
 int b43_lptab_read (struct b43_wldev*,int ) ;

__attribute__((used)) static u8 lpphy_get_bb_mult(struct b43_wldev *dev)
{
 return (b43_lptab_read(dev, B43_LPTAB16(0, 87)) & 0xFF00) >> 8;
}
