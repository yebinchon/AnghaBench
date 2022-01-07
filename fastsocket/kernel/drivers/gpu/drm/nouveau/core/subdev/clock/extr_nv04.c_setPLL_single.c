
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u32 ;
struct nv04_clock_priv {int dummy; } ;
struct nouveau_pll_vals {int log2P; int NM1; int M1; int N1; } ;
struct TYPE_3__ {int chip; } ;
struct TYPE_4__ {TYPE_1__ version; } ;


 int msleep (int) ;
 TYPE_2__* nouveau_bios (struct nv04_clock_priv*) ;
 int nv_rd32 (struct nv04_clock_priv*,int) ;
 int nv_wr32 (struct nv04_clock_priv*,int,int) ;
 int powerctrl_1_shift (int,int) ;

__attribute__((used)) static void
setPLL_single(struct nv04_clock_priv *priv, u32 reg,
       struct nouveau_pll_vals *pv)
{
 int chip_version = nouveau_bios(priv)->version.chip;
 uint32_t oldpll = nv_rd32(priv, reg);
 int oldN = (oldpll >> 8) & 0xff, oldM = oldpll & 0xff;
 uint32_t pll = (oldpll & 0xfff80000) | pv->log2P << 16 | pv->NM1;
 uint32_t saved_powerctrl_1 = 0;
 int shift_powerctrl_1 = powerctrl_1_shift(chip_version, reg);

 if (oldpll == pll)
  return;

 if (shift_powerctrl_1 >= 0) {
  saved_powerctrl_1 = nv_rd32(priv, 0x001584);
  nv_wr32(priv, 0x001584,
   (saved_powerctrl_1 & ~(0xf << shift_powerctrl_1)) |
   1 << shift_powerctrl_1);
 }

 if (oldM && pv->M1 && (oldN / oldM < pv->N1 / pv->M1))

  nv_wr32(priv, reg, pv->log2P << 16 | (oldpll & 0xffff));
 else

  nv_wr32(priv, reg, (oldpll & 0xffff0000) | pv->NM1);

 if (chip_version < 0x17 && chip_version != 0x11)

  msleep(64);
 nv_rd32(priv, reg);


 nv_wr32(priv, reg, pll);

 if (shift_powerctrl_1 >= 0)
  nv_wr32(priv, 0x001584, saved_powerctrl_1);
}
