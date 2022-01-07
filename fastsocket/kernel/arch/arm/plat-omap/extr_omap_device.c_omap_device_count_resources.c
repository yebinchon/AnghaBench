
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_hwmod {int dummy; } ;
struct TYPE_2__ {int name; } ;
struct omap_device {int hwmods_cnt; TYPE_1__ pdev; struct omap_hwmod** hwmods; } ;


 scalar_t__ omap_hwmod_count_resources (struct omap_hwmod*) ;
 int pr_debug (char*,int ,int,int) ;

int omap_device_count_resources(struct omap_device *od)
{
 struct omap_hwmod *oh;
 int c = 0;
 int i;

 for (i = 0, oh = *od->hwmods; i < od->hwmods_cnt; i++, oh++)
  c += omap_hwmod_count_resources(oh);

 pr_debug("omap_device: %s: counted %d total resources across %d "
   "hwmods\n", od->pdev.name, c, od->hwmods_cnt);

 return c;
}
