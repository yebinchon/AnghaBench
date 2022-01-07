
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct omap_hwmod {int dummy; } ;
struct omap_device {int hwmods_cnt; struct omap_hwmod** hwmods; } ;


 int omap_hwmod_fill_resources (struct omap_hwmod*,struct resource*) ;

int omap_device_fill_resources(struct omap_device *od, struct resource *res)
{
 struct omap_hwmod *oh;
 int c = 0;
 int i, r;

 for (i = 0, oh = *od->hwmods; i < od->hwmods_cnt; i++, oh++) {
  r = omap_hwmod_fill_resources(oh, res);
  res += r;
  c += r;
 }

 return 0;
}
