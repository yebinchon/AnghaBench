
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nouveau_pm_voltage {int nr_level; TYPE_1__* level; } ;
struct drm_device {int dummy; } ;
struct TYPE_4__ {struct nouveau_pm_voltage voltage; } ;
struct TYPE_3__ {int voltage; int vid; } ;


 int ENOENT ;
 TYPE_2__* nouveau_pm (struct drm_device*) ;

int
nouveau_volt_vid_lookup(struct drm_device *dev, int voltage)
{
 struct nouveau_pm_voltage *volt = &nouveau_pm(dev)->voltage;
 int i;

 for (i = 0; i < volt->nr_level; i++) {
  if (volt->level[i].voltage == voltage)
   return volt->level[i].vid;
 }

 return -ENOENT;
}
