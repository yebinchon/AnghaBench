
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct b43_wldev {int dummy; } ;
struct b43_nphy_channeltab_entry_rev2 {scalar_t__ channel; } ;


 unsigned int ARRAY_SIZE (struct b43_nphy_channeltab_entry_rev2*) ;
 struct b43_nphy_channeltab_entry_rev2* b43_nphy_channeltab_rev2 ;

const struct b43_nphy_channeltab_entry_rev2 *
b43_nphy_get_chantabent_rev2(struct b43_wldev *dev, u8 channel)
{
 const struct b43_nphy_channeltab_entry_rev2 *e;
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(b43_nphy_channeltab_rev2); i++) {
  e = &(b43_nphy_channeltab_rev2[i]);
  if (e->channel == channel)
   return e;
 }

 return ((void*)0);
}
