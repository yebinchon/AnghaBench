
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct b43_wldev {int dummy; } ;


 int B43_LCNTAB32 (int,int) ;
 int b43_lcntab_read (struct b43_wldev*,int ) ;

__attribute__((used)) static void b43_phy_lcn_load_rfpower(struct b43_wldev *dev)
{
 u32 bbmult, rfgain;
 u8 i;

 for (i = 0; i < 128; i++) {
  bbmult = b43_lcntab_read(dev, B43_LCNTAB32(0x7, 0x140 + i));
  bbmult >>= 20;
  rfgain = b43_lcntab_read(dev, B43_LCNTAB32(0x7, 0xc0 + i));




 }
}
