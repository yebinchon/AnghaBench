
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powerdomain {int dummy; } ;
struct omap_device {int * hwmods; int hwmods_cnt; } ;


 struct powerdomain* omap_hwmod_get_pwrdm (int ) ;

struct powerdomain *omap_device_get_pwrdm(struct omap_device *od)
{





 if (!od->hwmods_cnt)
  return ((void*)0);

 return omap_hwmod_get_pwrdm(od->hwmods[0]);
}
