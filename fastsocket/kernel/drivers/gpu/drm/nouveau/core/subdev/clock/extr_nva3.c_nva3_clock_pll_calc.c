
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvbios_pll {int refclk; } ;
struct nouveau_pll_vals {int N1; int M1; int log2P; int refclk; } ;
struct nouveau_clock {int dummy; } ;


 int nva3_pll_calc (struct nouveau_clock*,struct nvbios_pll*,int,int*,int *,int*,int*) ;

int
nva3_clock_pll_calc(struct nouveau_clock *clock, struct nvbios_pll *info,
      int clk, struct nouveau_pll_vals *pv)
{
 int ret, N, M, P;

 ret = nva3_pll_calc(clock, info, clk, &N, ((void*)0), &M, &P);

 if (ret > 0) {
  pv->refclk = info->refclk;
  pv->N1 = N;
  pv->M1 = M;
  pv->log2P = P;
 }
 return ret;
}
