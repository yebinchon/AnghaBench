
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvc0_pm_state {struct nouveau_pm_level* perflvl; } ;
struct TYPE_2__ {int * reg; } ;
struct nouveau_pm_level {TYPE_1__ timing; } ;
struct nouveau_mem_exec_func {struct nvc0_pm_state* priv; int dev; } ;
struct nouveau_device {int dummy; } ;


 struct nouveau_device* nouveau_dev (int ) ;
 int nv_wr32 (struct nouveau_device*,int,int ) ;

__attribute__((used)) static void
mclk_timing_set(struct nouveau_mem_exec_func *exec)
{
 struct nouveau_device *device = nouveau_dev(exec->dev);
 struct nvc0_pm_state *info = exec->priv;
 struct nouveau_pm_level *perflvl = info->perflvl;
 int i;

 for (i = 0; i < 5; i++)
  nv_wr32(device, 0x10f290 + (i * 4), perflvl->timing.reg[i]);
}
