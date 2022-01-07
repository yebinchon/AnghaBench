
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwsq_ucode {int dummy; } ;
struct nv50_pm_state {struct hwsq_ucode mclk_hwsq; } ;
struct nouveau_mem_exec_func {struct nv50_pm_state* priv; } ;


 int hwsq_wr32 (struct hwsq_ucode*,int,int) ;

__attribute__((used)) static void
mclk_refresh(struct nouveau_mem_exec_func *exec)
{
 struct nv50_pm_state *info = exec->priv;
 struct hwsq_ucode *hwsq = &info->mclk_hwsq;

 hwsq_wr32(hwsq, 0x1002d0, 0x00000001);
}
