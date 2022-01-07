
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvc0_pm_state {int perflvl; } ;
struct nouveau_mem_exec_func {struct nvc0_pm_state* priv; int timing_set; int clock_set; int mrs; int mrg; int wait; int refresh_self; int refresh_auto; int refresh; int precharge; struct drm_device* dev; } ;
struct nouveau_device {int chipset; } ;
struct drm_device {int dummy; } ;


 int mclk_clock_set ;
 int mclk_mrg ;
 int mclk_mrs ;
 int mclk_precharge ;
 int mclk_refresh ;
 int mclk_refresh_auto ;
 int mclk_refresh_self ;
 int mclk_timing_set ;
 int mclk_wait ;
 struct nouveau_device* nouveau_dev (struct drm_device*) ;
 int nouveau_mem_exec (struct nouveau_mem_exec_func*,int ) ;
 int nv_wr32 (struct nouveau_device*,int,int) ;

__attribute__((used)) static void
prog_mem(struct drm_device *dev, struct nvc0_pm_state *info)
{
 struct nouveau_device *device = nouveau_dev(dev);
 struct nouveau_mem_exec_func exec = {
  .dev = dev,
  .precharge = mclk_precharge,
  .refresh = mclk_refresh,
  .refresh_auto = mclk_refresh_auto,
  .refresh_self = mclk_refresh_self,
  .wait = mclk_wait,
  .mrg = mclk_mrg,
  .mrs = mclk_mrs,
  .clock_set = mclk_clock_set,
  .timing_set = mclk_timing_set,
  .priv = info
 };

 if (device->chipset < 0xd0)
  nv_wr32(device, 0x611200, 0x00003300);
 else
  nv_wr32(device, 0x62c000, 0x03030000);

 nouveau_mem_exec(&exec, info->perflvl);

 if (device->chipset < 0xd0)
  nv_wr32(device, 0x611200, 0x00003330);
 else
  nv_wr32(device, 0x62c000, 0x03030300);
}
