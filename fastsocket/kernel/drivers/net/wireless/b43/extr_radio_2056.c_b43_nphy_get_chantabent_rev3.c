
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_2__ {int rev; } ;
struct b43_wldev {TYPE_1__ phy; } ;
struct b43_nphy_channeltab_entry_rev3 {scalar_t__ freq; } ;


 unsigned int ARRAY_SIZE (struct b43_nphy_channeltab_entry_rev3*) ;
 int B43_WARN_ON (int) ;
 struct b43_nphy_channeltab_entry_rev3* b43_nphy_channeltab_rev3 ;
 struct b43_nphy_channeltab_entry_rev3* b43_nphy_channeltab_rev4 ;
 struct b43_nphy_channeltab_entry_rev3* b43_nphy_channeltab_rev5 ;
 struct b43_nphy_channeltab_entry_rev3* b43_nphy_channeltab_rev6 ;
 struct b43_nphy_channeltab_entry_rev3* b43_nphy_channeltab_rev7_9 ;
 struct b43_nphy_channeltab_entry_rev3* b43_nphy_channeltab_rev8 ;

const struct b43_nphy_channeltab_entry_rev3 *
b43_nphy_get_chantabent_rev3(struct b43_wldev *dev, u16 freq)
{
 const struct b43_nphy_channeltab_entry_rev3 *e;
 unsigned int length, i;

 switch (dev->phy.rev) {
 case 3:
  e = b43_nphy_channeltab_rev3;
  length = ARRAY_SIZE(b43_nphy_channeltab_rev3);
  break;
 case 4:
  e = b43_nphy_channeltab_rev4;
  length = ARRAY_SIZE(b43_nphy_channeltab_rev4);
  break;
 case 5:
  e = b43_nphy_channeltab_rev5;
  length = ARRAY_SIZE(b43_nphy_channeltab_rev5);
  break;
 case 6:
  e = b43_nphy_channeltab_rev6;
  length = ARRAY_SIZE(b43_nphy_channeltab_rev6);
  break;
 case 7:
 case 9:
  e = b43_nphy_channeltab_rev7_9;
  length = ARRAY_SIZE(b43_nphy_channeltab_rev7_9);
  break;
 case 8:
  e = b43_nphy_channeltab_rev8;
  length = ARRAY_SIZE(b43_nphy_channeltab_rev8);
  break;
 default:
  B43_WARN_ON(1);
  return ((void*)0);
 }

 for (i = 0; i < length; i++, e++) {
  if (e->freq == freq)
   return e;
 }

 return ((void*)0);
}
