
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvbios_pll {int dummy; } ;
struct nv04_clock_priv {int dummy; } ;
struct nouveau_pll_vals {int dummy; } ;
struct nouveau_clock {int (* pll_calc ) (struct nouveau_clock*,struct nvbios_pll*,int,struct nouveau_pll_vals*) ;int (* pll_prog ) (struct nouveau_clock*,int,struct nouveau_pll_vals*) ;} ;


 int nouveau_bios (struct nv04_clock_priv*) ;
 int nvbios_pll_parse (int ,int,struct nvbios_pll*) ;
 int stub1 (struct nouveau_clock*,struct nvbios_pll*,int,struct nouveau_pll_vals*) ;
 int stub2 (struct nouveau_clock*,int,struct nouveau_pll_vals*) ;

int
nv04_clock_pll_set(struct nouveau_clock *clk, u32 type, u32 freq)
{
 struct nv04_clock_priv *priv = (void *)clk;
 struct nouveau_pll_vals pv;
 struct nvbios_pll info;
 int ret;

 ret = nvbios_pll_parse(nouveau_bios(priv), type > 0x405c ?
          type : type - 4, &info);
 if (ret)
  return ret;

 ret = clk->pll_calc(clk, &info, freq, &pv);
 if (!ret)
  return ret;

 return clk->pll_prog(clk, type, &pv);
}
