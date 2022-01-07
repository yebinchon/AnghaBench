
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct hwsq_ucode {int dummy; } ;
struct nv50_pm_state {struct hwsq_ucode mclk_hwsq; } ;
struct nouveau_mem_exec_func {struct nv50_pm_state* priv; int dev; } ;
struct TYPE_2__ {int ranks; } ;
struct nouveau_fb {TYPE_1__ ram; } ;
struct nouveau_device {int dummy; } ;


 int hwsq_wr32 (struct hwsq_ucode*,int,int ) ;
 struct nouveau_device* nouveau_dev (int ) ;
 struct nouveau_fb* nouveau_fb (struct nouveau_device*) ;

__attribute__((used)) static void
mclk_mrs(struct nouveau_mem_exec_func *exec, int mr, u32 data)
{
 struct nouveau_device *device = nouveau_dev(exec->dev);
 struct nouveau_fb *pfb = nouveau_fb(device);
 struct nv50_pm_state *info = exec->priv;
 struct hwsq_ucode *hwsq = &info->mclk_hwsq;

 if (mr <= 1) {
  if (pfb->ram.ranks > 1)
   hwsq_wr32(hwsq, 0x1002c8 + ((mr - 0) * 4), data);
  hwsq_wr32(hwsq, 0x1002c0 + ((mr - 0) * 4), data);
 } else
 if (mr <= 3) {
  if (pfb->ram.ranks > 1)
   hwsq_wr32(hwsq, 0x1002e8 + ((mr - 2) * 4), data);
  hwsq_wr32(hwsq, 0x1002e0 + ((mr - 2) * 4), data);
 }
}
