
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nv04_clock_priv {int dummy; } ;
struct nouveau_pll_vals {int dummy; } ;
struct nouveau_clock {int dummy; } ;
struct TYPE_3__ {int chip; } ;
struct TYPE_4__ {TYPE_1__ version; } ;


 TYPE_2__* nouveau_bios (struct nouveau_clock*) ;
 int setPLL_double_highregs (struct nv04_clock_priv*,int,struct nouveau_pll_vals*) ;
 int setPLL_double_lowregs (struct nv04_clock_priv*,int,struct nouveau_pll_vals*) ;
 int setPLL_single (struct nv04_clock_priv*,int,struct nouveau_pll_vals*) ;

int
nv04_clock_pll_prog(struct nouveau_clock *clk, u32 reg1,
      struct nouveau_pll_vals *pv)
{
 struct nv04_clock_priv *priv = (void *)clk;
 int cv = nouveau_bios(clk)->version.chip;

 if (cv == 0x30 || cv == 0x31 || cv == 0x35 || cv == 0x36 ||
     cv >= 0x40) {
  if (reg1 > 0x405c)
   setPLL_double_highregs(priv, reg1, pv);
  else
   setPLL_double_lowregs(priv, reg1, pv);
 } else
  setPLL_single(priv, reg1, pv);

 return 0;
}
