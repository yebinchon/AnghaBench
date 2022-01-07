
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct b43_phy_g* g; } ;
struct b43_wldev {TYPE_1__ phy; } ;
struct b43_rfatt {int dummy; } ;
struct b43_phy_g {int bbatt; int rfatt; } ;
struct b43_lo_calib {int ctl; } ;
typedef int rf ;


 struct b43_lo_calib* b43_get_calib_lo_settings (struct b43_wldev*,int *,struct b43_rfatt*) ;
 int b43_lo_fixup_rfatt (struct b43_rfatt*) ;
 int b43_lo_write (struct b43_wldev*,int *) ;
 int memcpy (struct b43_rfatt*,int *,int) ;

void b43_lo_g_adjust(struct b43_wldev *dev)
{
 struct b43_phy_g *gphy = dev->phy.g;
 struct b43_lo_calib *cal;
 struct b43_rfatt rf;

 memcpy(&rf, &gphy->rfatt, sizeof(rf));
 b43_lo_fixup_rfatt(&rf);

 cal = b43_get_calib_lo_settings(dev, &gphy->bbatt, &rf);
 if (!cal)
  return;
 b43_lo_write(dev, &cal->ctl);
}
