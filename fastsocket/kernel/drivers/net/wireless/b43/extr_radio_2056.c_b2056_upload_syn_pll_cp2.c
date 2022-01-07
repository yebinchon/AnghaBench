
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t rev; } ;
struct b43_wldev {TYPE_1__ phy; } ;
struct b2056_inittabs_pts {struct b2056_inittab_entry* syn; } ;
struct b2056_inittab_entry {int ghz2; int ghz5; } ;


 size_t ARRAY_SIZE (struct b2056_inittabs_pts*) ;
 size_t B2056_SYN_PLL_CP2 ;
 int B43_WARN_ON (int) ;
 struct b2056_inittabs_pts* b2056_inittabs ;
 int b43_radio_write (struct b43_wldev*,size_t,int ) ;

void b2056_upload_syn_pll_cp2(struct b43_wldev *dev, bool ghz5)
{
 const struct b2056_inittabs_pts *pts;
 const struct b2056_inittab_entry *e;

 if (dev->phy.rev >= ARRAY_SIZE(b2056_inittabs)) {
  B43_WARN_ON(1);
  return;
 }
 pts = &b2056_inittabs[dev->phy.rev];
 e = &pts->syn[B2056_SYN_PLL_CP2];

 b43_radio_write(dev, B2056_SYN_PLL_CP2, ghz5 ? e->ghz5 : e->ghz2);
}
