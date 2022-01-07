
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int name; } ;
struct TYPE_7__ {TYPE_1__ attr; } ;
struct nouveau_pm_level {TYPE_3__ dev_attr; } ;
struct nouveau_pm {int nr_perflvl; struct nouveau_pm_level* perflvl; } ;
struct drm_device {TYPE_2__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_6__ {struct device dev; } ;


 TYPE_3__ dev_attr_performance_level ;
 int device_remove_file (struct device*,TYPE_3__*) ;
 struct nouveau_pm* nouveau_pm (struct drm_device*) ;

__attribute__((used)) static void
nouveau_sysfs_fini(struct drm_device *dev)
{
 struct nouveau_pm *pm = nouveau_pm(dev);
 struct device *d = &dev->pdev->dev;
 int i;

 device_remove_file(d, &dev_attr_performance_level);
 for (i = 0; i < pm->nr_perflvl; i++) {
  struct nouveau_pm_level *pl = &pm->perflvl[i];

  if (!pl->dev_attr.attr.name)
   break;

  device_remove_file(d, &pl->dev_attr);
 }
}
