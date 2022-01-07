
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nouveau_pm_voltage {int level; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {struct nouveau_pm_voltage voltage; } ;


 int kfree (int ) ;
 TYPE_1__* nouveau_pm (struct drm_device*) ;

void
nouveau_volt_fini(struct drm_device *dev)
{
 struct nouveau_pm_voltage *volt = &nouveau_pm(dev)->voltage;

 kfree(volt->level);
}
