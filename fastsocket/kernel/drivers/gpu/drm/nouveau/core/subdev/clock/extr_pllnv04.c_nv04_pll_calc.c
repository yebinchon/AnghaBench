
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int max_freq; } ;
struct nvbios_pll {TYPE_1__ vco2; } ;
struct nouveau_clock {int dummy; } ;


 int getMNP_double (struct nouveau_clock*,struct nvbios_pll*,int ,int*,int*,int*,int*,int*) ;
 int getMNP_single (struct nouveau_clock*,struct nvbios_pll*,int ,int*,int*,int*) ;
 int nv_error (struct nouveau_clock*,char*) ;

int
nv04_pll_calc(struct nouveau_clock *clk, struct nvbios_pll *info, u32 freq,
       int *N1, int *M1, int *N2, int *M2, int *P)
{
 int ret;

 if (!info->vco2.max_freq) {
  ret = getMNP_single(clk, info, freq, N1, M1, P);
  *N2 = 1;
  *M2 = 1;
 } else {
  ret = getMNP_double(clk, info, freq, N1, M1, N2, M2, P);
 }

 if (!ret)
  nv_error(clk, "unable to compute acceptable pll values\n");
 return ret;
}
