
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nouveau_pm_level {int memory; void* shader; void* core; } ;
struct nouveau_device {int dummy; } ;
struct drm_device {int dummy; } ;


 struct nouveau_device* nouveau_dev (struct drm_device*) ;
 int nv_rd32 (struct nouveau_device*,int) ;
 void* read_clk (struct drm_device*,int) ;
 int read_pll_2 (struct drm_device*,int) ;

int
nv40_pm_clocks_get(struct drm_device *dev, struct nouveau_pm_level *perflvl)
{
 struct nouveau_device *device = nouveau_dev(dev);
 u32 ctrl = nv_rd32(device, 0x00c040);

 perflvl->core = read_clk(dev, (ctrl & 0x00000003) >> 0);
 perflvl->shader = read_clk(dev, (ctrl & 0x00000030) >> 4);
 perflvl->memory = read_pll_2(dev, 0x4020);
 return 0;
}
