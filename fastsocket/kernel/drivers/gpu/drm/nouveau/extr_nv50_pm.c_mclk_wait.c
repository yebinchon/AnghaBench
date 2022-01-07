
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hwsq_ucode {int dummy; } ;
struct nv50_pm_state {struct hwsq_ucode mclk_hwsq; } ;
struct nouveau_mem_exec_func {struct nv50_pm_state* priv; } ;


 int hwsq_usec (struct hwsq_ucode*,int) ;

__attribute__((used)) static void
mclk_wait(struct nouveau_mem_exec_func *exec, u32 nsec)
{
 struct nv50_pm_state *info = exec->priv;
 struct hwsq_ucode *hwsq = &info->mclk_hwsq;

 if (nsec > 1000)
  hwsq_usec(hwsq, (nsec + 500) / 1000);
}
