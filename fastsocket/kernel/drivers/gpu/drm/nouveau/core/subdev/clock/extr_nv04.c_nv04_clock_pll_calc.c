
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvbios_pll {int refclk; } ;
struct nouveau_pll_vals {int N1; int M1; int N2; int M2; int log2P; int refclk; } ;
struct nouveau_clock {int dummy; } ;


 int nv04_pll_calc (struct nouveau_clock*,struct nvbios_pll*,int,int*,int*,int*,int*,int*) ;

int
nv04_clock_pll_calc(struct nouveau_clock *clock, struct nvbios_pll *info,
      int clk, struct nouveau_pll_vals *pv)
{
 int N1, M1, N2, M2, P;
 int ret = nv04_pll_calc(clock, info, clk, &N1, &M1, &N2, &M2, &P);
 if (ret) {
  pv->refclk = info->refclk;
  pv->N1 = N1;
  pv->M1 = M1;
  pv->N2 = N2;
  pv->M2 = M2;
  pv->log2P = P;
 }
 return ret;
}
