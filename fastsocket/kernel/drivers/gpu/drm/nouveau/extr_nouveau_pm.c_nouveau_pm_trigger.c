
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct nouveau_timer {int (* read ) (struct nouveau_timer*) ;} ;
struct nouveau_pm_profile {TYPE_1__* func; } ;
struct nouveau_pm_level {int id; } ;
struct nouveau_pm {struct nouveau_pm_level* cur; struct nouveau_pm_profile* profile; struct nouveau_pm_profile* profile_dc; struct nouveau_pm_profile* profile_ac; } ;
struct nouveau_drm {int device; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {struct nouveau_pm_level* (* select ) (struct nouveau_pm_profile*) ;int (* init ) (struct nouveau_pm_profile*) ;int (* fini ) (struct nouveau_pm_profile*) ;} ;


 int NV_INFO (struct nouveau_drm*,char*,int) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 struct nouveau_pm* nouveau_pm (struct drm_device*) ;
 int nouveau_pm_perflvl_set (struct drm_device*,struct nouveau_pm_level*) ;
 struct nouveau_timer* nouveau_timer (int ) ;
 scalar_t__ power_supply_is_system_supplied () ;
 int stub1 (struct nouveau_pm_profile*) ;
 int stub2 (struct nouveau_pm_profile*) ;
 struct nouveau_pm_level* stub3 (struct nouveau_pm_profile*) ;
 int stub4 (struct nouveau_timer*) ;
 int stub5 (struct nouveau_timer*) ;

void
nouveau_pm_trigger(struct drm_device *dev)
{
 struct nouveau_drm *drm = nouveau_drm(dev);
 struct nouveau_timer *ptimer = nouveau_timer(drm->device);
 struct nouveau_pm *pm = nouveau_pm(dev);
 struct nouveau_pm_profile *profile = ((void*)0);
 struct nouveau_pm_level *perflvl = ((void*)0);
 int ret;


 if (power_supply_is_system_supplied())
  profile = pm->profile_ac;
 else
  profile = pm->profile_dc;

 if (profile != pm->profile) {
  pm->profile->func->fini(pm->profile);
  pm->profile = profile;
  pm->profile->func->init(pm->profile);
 }


 perflvl = profile->func->select(profile);


 if (perflvl != pm->cur) {
  u64 time0 = ptimer->read(ptimer);

  NV_INFO(drm, "setting performance level: %d", perflvl->id);
  ret = nouveau_pm_perflvl_set(dev, perflvl);
  if (ret)
   NV_INFO(drm, "> reclocking failed: %d\n\n", ret);

  NV_INFO(drm, "> reclocking took %lluns\n\n",
        ptimer->read(ptimer) - time0);
 }
}
