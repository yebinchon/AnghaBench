
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_hwmod {int dummy; } ;
struct omap_device {int hwmods_cnt; struct omap_hwmod** hwmods; } ;


 int omap_hwmod_enable (struct omap_hwmod*) ;

int omap_device_enable_hwmods(struct omap_device *od)
{
 struct omap_hwmod *oh;
 int i;

 for (i = 0, oh = *od->hwmods; i < od->hwmods_cnt; i++, oh++)
  omap_hwmod_enable(oh);


 return 0;
}
