
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * name; int mode; } ;
struct TYPE_7__ {TYPE_2__ attr; int * store; int show; } ;
struct nouveau_pm_level {TYPE_3__ dev_attr; int id; int * name; } ;
struct nouveau_pm {int nr_perflvl; struct nouveau_pm_level* perflvl; } ;
struct nouveau_drm {int dummy; } ;
struct drm_device {TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_5__ {struct device dev; } ;


 int NV_ERROR (struct nouveau_drm*,char*,int ,int) ;
 int S_IRUGO ;
 TYPE_3__ dev_attr_performance_level ;
 int device_create_file (struct device*,TYPE_3__*) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 struct nouveau_pm* nouveau_pm (struct drm_device*) ;
 int nouveau_pm_fini (struct drm_device*) ;
 int nouveau_pm_get_perflvl_info ;
 int sysfs_attr_init (TYPE_2__*) ;

__attribute__((used)) static int
nouveau_sysfs_init(struct drm_device *dev)
{
 struct nouveau_drm *drm = nouveau_drm(dev);
 struct nouveau_pm *pm = nouveau_pm(dev);
 struct device *d = &dev->pdev->dev;
 int ret, i;

 ret = device_create_file(d, &dev_attr_performance_level);
 if (ret)
  return ret;

 for (i = 0; i < pm->nr_perflvl; i++) {
  struct nouveau_pm_level *perflvl = &pm->perflvl[i];

  perflvl->dev_attr.attr.name = perflvl->name;
  perflvl->dev_attr.attr.mode = S_IRUGO;
  perflvl->dev_attr.show = nouveau_pm_get_perflvl_info;
  perflvl->dev_attr.store = ((void*)0);
  sysfs_attr_init(&perflvl->dev_attr.attr);

  ret = device_create_file(d, &perflvl->dev_attr);
  if (ret) {
   NV_ERROR(drm, "failed pervlvl %d sysfs: %d\n",
     perflvl->id, i);
   perflvl->dev_attr.attr.name = ((void*)0);
   nouveau_pm_fini(dev);
   return ret;
  }
 }

 return 0;
}
