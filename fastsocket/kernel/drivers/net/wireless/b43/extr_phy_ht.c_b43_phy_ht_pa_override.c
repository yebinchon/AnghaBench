
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {struct b43_phy_ht* ht; } ;
struct b43_wldev {TYPE_1__ phy; } ;
struct b43_phy_ht {int* rf_ctl_int_save; } ;





 int b43_phy_read (struct b43_wldev*,int const) ;
 int b43_phy_write (struct b43_wldev*,int const,int) ;

__attribute__((used)) static void b43_phy_ht_pa_override(struct b43_wldev *dev, bool enable)
{
 struct b43_phy_ht *htphy = dev->phy.ht;
 static const u16 regs[3] = { 130,
         129,
         128 };
 int i;

 if (enable) {
  for (i = 0; i < 3; i++)
   b43_phy_write(dev, regs[i], htphy->rf_ctl_int_save[i]);
 } else {
  for (i = 0; i < 3; i++)
   htphy->rf_ctl_int_save[i] = b43_phy_read(dev, regs[i]);

  for (i = 0; i < 3; i++)
   b43_phy_write(dev, regs[i], 0x0400);
 }
}
