
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int pll; int clk; } ;
struct nva3_pm_state {int r004018; int r100760; int* ramcfg; int* rammap; TYPE_1__ mclk; TYPE_2__* perflvl; } ;
struct nouveau_mem_exec_func {struct nva3_pm_state* priv; int timing_set; int clock_set; int mrs; int mrg; int wait; int refresh_self; int refresh_auto; int refresh; int precharge; struct drm_device* dev; } ;
struct nouveau_device {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_4__ {int memory; } ;


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
 int nouveau_mem_exec (struct nouveau_mem_exec_func*,TYPE_2__*) ;
 int nv_mask (struct nouveau_device*,int,int,int) ;
 int nv_rd32 (struct nouveau_device*,int) ;
 int nv_wait (struct nouveau_device*,int,int,int) ;
 int nv_wr32 (struct nouveau_device*,int,int) ;

__attribute__((used)) static void
prog_mem(struct drm_device *dev, struct nva3_pm_state *info)
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
 u32 ctrl;


 if (info->perflvl->memory <= 750000) {
  info->r004018 = 0x10000000;
  info->r100760 = 0x22222222;
 }

 ctrl = nv_rd32(device, 0x004000);
 if (ctrl & 0x00000008) {
  if (info->mclk.pll) {
   nv_mask(device, 0x004128, 0x00000101, 0x00000101);
   nv_wr32(device, 0x004004, info->mclk.pll);
   nv_wr32(device, 0x004000, (ctrl |= 0x00000001));
   nv_wr32(device, 0x004000, (ctrl &= 0xffffffef));
   nv_wait(device, 0x004000, 0x00020000, 0x00020000);
   nv_wr32(device, 0x004000, (ctrl |= 0x00000010));
   nv_wr32(device, 0x004018, 0x00005000 | info->r004018);
   nv_wr32(device, 0x004000, (ctrl |= 0x00000004));
  }
 } else {
  u32 ssel = 0x00000101;
  if (info->mclk.clk)
   ssel |= info->mclk.clk;
  else
   ssel |= 0x00080000;
  nv_mask(device, 0x004168, 0x003f3141, ctrl);
 }

 if (info->ramcfg) {
  if (info->ramcfg[2] & 0x10) {
   nv_mask(device, 0x111104, 0x00000600, 0x00000000);
  } else {
   nv_mask(device, 0x111100, 0x40000000, 0x40000000);
   nv_mask(device, 0x111104, 0x00000180, 0x00000000);
  }
 }
 if (info->rammap && !(info->rammap[4] & 0x02))
  nv_mask(device, 0x100200, 0x00000800, 0x00000000);
 nv_wr32(device, 0x611200, 0x00003300);
 if (!(info->ramcfg[2] & 0x10))
  nv_wr32(device, 0x111100, 0x4c020000);

 nouveau_mem_exec(&exec, info->perflvl);

 nv_wr32(device, 0x611200, 0x00003330);
 if (info->rammap && (info->rammap[4] & 0x02))
  nv_mask(device, 0x100200, 0x00000800, 0x00000800);
 if (info->ramcfg) {
  if (info->ramcfg[2] & 0x10) {
   nv_mask(device, 0x111104, 0x00000180, 0x00000180);
   nv_mask(device, 0x111100, 0x40000000, 0x00000000);
  } else {
   nv_mask(device, 0x111104, 0x00000600, 0x00000600);
  }
 }

 if (info->mclk.pll) {
  nv_mask(device, 0x004168, 0x00000001, 0x00000000);
  nv_mask(device, 0x004168, 0x00000100, 0x00000000);
 } else {
  nv_mask(device, 0x004000, 0x00000001, 0x00000000);
  nv_mask(device, 0x004128, 0x00000001, 0x00000000);
  nv_mask(device, 0x004128, 0x00000100, 0x00000000);
 }
}
