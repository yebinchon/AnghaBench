
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_pm_level {int core; int memory; } ;
struct drm_device {int dummy; } ;


 int PLL_CORE ;
 int PLL_MEMORY ;
 int nouveau_hw_get_clock (struct drm_device*,int ) ;

int
nv04_pm_clocks_get(struct drm_device *dev, struct nouveau_pm_level *perflvl)
{
 int ret;

 ret = nouveau_hw_get_clock(dev, PLL_CORE);
 if (ret < 0)
  return ret;
 perflvl->core = ret;

 ret = nouveau_hw_get_clock(dev, PLL_MEMORY);
 if (ret < 0)
  return ret;
 perflvl->memory = ret;

 return 0;
}
