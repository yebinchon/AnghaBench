
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_pll_vals {int M1; int M2; int N1; int N2; int refclk; int log2P; } ;



int
nouveau_hw_pllvals_to_clk(struct nouveau_pll_vals *pv)
{

 if (!pv->M1 || !pv->M2)
  return 0;

 return pv->N1 * pv->N2 * pv->refclk / (pv->M1 * pv->M2) >> pv->log2P;
}
