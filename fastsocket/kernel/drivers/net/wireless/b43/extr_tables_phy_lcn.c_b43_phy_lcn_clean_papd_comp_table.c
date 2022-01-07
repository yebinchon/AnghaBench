
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct b43_wldev {int dummy; } ;


 int B43_LCNTAB32 (int,int) ;
 int b43_lcntab_write (struct b43_wldev*,int ,int) ;

__attribute__((used)) static void b43_phy_lcn_clean_papd_comp_table(struct b43_wldev *dev)
{
 u8 i;

 for (i = 0; i < 0x80; i++)
  b43_lcntab_write(dev, B43_LCNTAB32(0x18, i), 0x80000);
}
