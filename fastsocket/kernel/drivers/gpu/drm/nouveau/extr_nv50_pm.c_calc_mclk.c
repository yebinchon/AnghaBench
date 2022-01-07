
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nvbios_pll {int bias_p; } ;
struct hwsq_ucode {int dummy; } ;
struct nv50_pm_state {int mctrl; int mcoef; struct hwsq_ucode mclk_hwsq; } ;
struct nouveau_pm_level {int memory; } ;
struct nouveau_mem_exec_func {struct nv50_pm_state* priv; int timing_set; int clock_set; int mrs; int mrg; int wait; int refresh_self; int refresh_auto; int refresh; int precharge; struct drm_device* dev; } ;
struct nouveau_drm {int device; } ;
struct nouveau_device {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {int chipset; } ;


 int EINVAL ;
 int calc_pll (struct drm_device*,int,struct nvbios_pll*,int ,int*,int*,int*) ;
 scalar_t__ clk_same (int ,int ) ;
 int clk_src_href ;
 int hwsq_fini (struct hwsq_ucode*) ;
 int hwsq_init (struct hwsq_ucode*) ;
 int hwsq_op5f (struct hwsq_ucode*,int,int) ;
 int hwsq_setf (struct hwsq_ucode*,int,int) ;
 int hwsq_wr32 (struct hwsq_ucode*,int,int) ;
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
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 int nouveau_mem_exec (struct nouveau_mem_exec_func*,struct nouveau_pm_level*) ;
 TYPE_1__* nv_device (int ) ;
 int nv_rd32 (struct nouveau_device*,int) ;
 int read_clk (struct drm_device*,int ) ;

__attribute__((used)) static int
calc_mclk(struct drm_device *dev, struct nouveau_pm_level *perflvl,
   struct nv50_pm_state *info)
{
 struct nouveau_drm *drm = nouveau_drm(dev);
 struct nouveau_device *device = nouveau_dev(dev);
 u32 crtc_mask = 0;
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
 struct hwsq_ucode *hwsq = &info->mclk_hwsq;
 struct nvbios_pll pll;
 int N, M, P;
 int ret;


 info->mctrl = nv_rd32(device, 0x004008);
 info->mctrl &= ~0x81ff0200;
 if (clk_same(perflvl->memory, read_clk(dev, clk_src_href))) {
  info->mctrl |= 0x00000200 | (pll.bias_p << 19);
 } else {
  ret = calc_pll(dev, 0x4008, &pll, perflvl->memory, &N, &M, &P);
  if (ret == 0)
   return -EINVAL;

  info->mctrl |= 0x80000000 | (P << 22) | (P << 16);
  info->mctrl |= pll.bias_p << 19;
  info->mcoef = (N << 8) | M;
 }


 hwsq_init(hwsq);
 if (crtc_mask) {
  hwsq_op5f(hwsq, crtc_mask, 0x00);
  hwsq_op5f(hwsq, crtc_mask, 0x01);
 }
 if (nv_device(drm->device)->chipset >= 0x92)
  hwsq_wr32(hwsq, 0x611200, 0x00003300);
 hwsq_setf(hwsq, 0x10, 0);
 hwsq_op5f(hwsq, 0x00, 0x01);

 ret = nouveau_mem_exec(&exec, perflvl);
 if (ret)
  return ret;

 hwsq_setf(hwsq, 0x10, 1);
 hwsq_op5f(hwsq, 0x00, 0x00);
 if (nv_device(drm->device)->chipset >= 0x92)
  hwsq_wr32(hwsq, 0x611200, 0x00003330);
 hwsq_fini(hwsq);
 return 0;
}
