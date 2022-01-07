
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct hwsq_ucode {int dummy; } ;
struct nv50_pm_state {struct hwsq_ucode mclk_hwsq; struct nouveau_pm_level* perflvl; } ;
struct TYPE_2__ {int* reg; } ;
struct nouveau_pm_level {TYPE_1__ timing; } ;
struct nouveau_mem_exec_func {struct nv50_pm_state* priv; int dev; } ;
struct nouveau_device {int dummy; } ;


 int hwsq_wr32 (struct hwsq_ucode*,int,int) ;
 struct nouveau_device* nouveau_dev (int ) ;
 int nv_rd32 (struct nouveau_device*,int) ;

__attribute__((used)) static void
mclk_timing_set(struct nouveau_mem_exec_func *exec)
{
 struct nouveau_device *device = nouveau_dev(exec->dev);
 struct nv50_pm_state *info = exec->priv;
 struct nouveau_pm_level *perflvl = info->perflvl;
 struct hwsq_ucode *hwsq = &info->mclk_hwsq;
 int i;

 for (i = 0; i < 9; i++) {
  u32 reg = 0x100220 + (i * 4);
  u32 val = nv_rd32(device, reg);
  if (val != perflvl->timing.reg[i])
   hwsq_wr32(hwsq, reg, perflvl->timing.reg[i]);
 }
}
