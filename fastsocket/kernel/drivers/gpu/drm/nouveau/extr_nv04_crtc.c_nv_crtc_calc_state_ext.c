
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int max_freq; } ;
struct nvbios_pll {int vco2; TYPE_1__ vco1; } ;
struct nv04_mode_state {int pllsel; struct nv04_crtc_reg* crtc_reg; } ;
struct nouveau_pll_vals {int log2P; int M1; int N1; int M2; int N2; scalar_t__ NM2; } ;
struct nv04_crtc_reg {struct nouveau_pll_vals pllvals; } ;
struct nouveau_drm {int device; } ;
struct TYPE_6__ {int offset; int (* set_offset ) (struct nouveau_crtc*,int ) ;} ;
struct nouveau_crtc {size_t index; TYPE_2__ cursor; } ;
struct nouveau_clock {int (* pll_calc ) (struct nouveau_clock*,struct nvbios_pll*,int,struct nouveau_pll_vals*) ;} ;
struct nouveau_bios {int dummy; } ;
struct drm_display_mode {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_crtc {struct drm_device* dev; } ;
struct TYPE_8__ {struct nv04_mode_state mode_reg; } ;
struct TYPE_7__ {int chipset; scalar_t__ card_type; } ;


 scalar_t__ NV_40 ;
 int NV_DEBUG (struct nouveau_drm*,char*,int ,int ,int ,...) ;
 int NV_PRAMDAC_PLL_COEFF_SELECT_SOURCE_PROG_MPLL ;
 int NV_PRAMDAC_PLL_COEFF_SELECT_SOURCE_PROG_NVPLL ;
 int NV_PRAMDAC_PLL_COEFF_SELECT_USE_VPLL2_TRUE ;
 int PLLSEL_TV_MASK ;
 int PLLSEL_VPLL1_MASK ;
 int PLLSEL_VPLL2_MASK ;
 int PLL_VPLL0 ;
 int PLL_VPLL1 ;
 int memset (int *,int ,int) ;
 struct nouveau_bios* nouveau_bios (int ) ;
 struct nouveau_clock* nouveau_clock (int ) ;
 struct nouveau_crtc* nouveau_crtc (struct drm_crtc*) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 TYPE_4__* nv04_display (struct drm_device*) ;
 TYPE_3__* nv_device (int ) ;
 scalar_t__ nvbios_pll_parse (struct nouveau_bios*,int ,struct nvbios_pll*) ;
 int stub1 (struct nouveau_clock*,struct nvbios_pll*,int,struct nouveau_pll_vals*) ;
 int stub2 (struct nouveau_crtc*,int ) ;

__attribute__((used)) static void nv_crtc_calc_state_ext(struct drm_crtc *crtc, struct drm_display_mode * mode, int dot_clock)
{
 struct drm_device *dev = crtc->dev;
 struct nouveau_drm *drm = nouveau_drm(dev);
 struct nouveau_bios *bios = nouveau_bios(drm->device);
 struct nouveau_clock *clk = nouveau_clock(drm->device);
 struct nouveau_crtc *nv_crtc = nouveau_crtc(crtc);
 struct nv04_mode_state *state = &nv04_display(dev)->mode_reg;
 struct nv04_crtc_reg *regp = &state->crtc_reg[nv_crtc->index];
 struct nouveau_pll_vals *pv = &regp->pllvals;
 struct nvbios_pll pll_lim;

 if (nvbios_pll_parse(bios, nv_crtc->index ? PLL_VPLL1 : PLL_VPLL0,
       &pll_lim))
  return;


 pv->NM2 = 0;
 if (nv_device(drm->device)->chipset > 0x40 && dot_clock <= (pll_lim.vco1.max_freq / 2))
  memset(&pll_lim.vco2, 0, sizeof(pll_lim.vco2));


 if (!clk->pll_calc(clk, &pll_lim, dot_clock, pv))
  return;

 state->pllsel &= PLLSEL_VPLL1_MASK | PLLSEL_VPLL2_MASK | PLLSEL_TV_MASK;


 if (nv_device(drm->device)->card_type == NV_40)
  state->pllsel |= NV_PRAMDAC_PLL_COEFF_SELECT_USE_VPLL2_TRUE;

 if (nv_device(drm->device)->chipset < 0x41)
  state->pllsel |= NV_PRAMDAC_PLL_COEFF_SELECT_SOURCE_PROG_MPLL |
     NV_PRAMDAC_PLL_COEFF_SELECT_SOURCE_PROG_NVPLL;
 state->pllsel |= nv_crtc->index ? PLLSEL_VPLL2_MASK : PLLSEL_VPLL1_MASK;

 if (pv->NM2)
  NV_DEBUG(drm, "vpll: n1 %d n2 %d m1 %d m2 %d log2p %d\n",
    pv->N1, pv->N2, pv->M1, pv->M2, pv->log2P);
 else
  NV_DEBUG(drm, "vpll: n %d m %d log2p %d\n",
    pv->N1, pv->M1, pv->log2P);

 nv_crtc->cursor.set_offset(nv_crtc, nv_crtc->cursor.offset);
}
