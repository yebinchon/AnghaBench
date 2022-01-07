
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct nouveau_pll_vals {int log2P; int N2; int M2; int NM1; int NM2; int M1; } ;
struct nouveau_drm {int device; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {int chipset; } ;


 int NV30_RAMDAC_ENABLE_VCO2 ;
 int NV31_RAMDAC_ENABLE_VCO2 ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 TYPE_1__* nv_device (int ) ;
 scalar_t__ nv_two_reg_pll (struct drm_device*) ;

__attribute__((used)) static void
nouveau_hw_decode_pll(struct drm_device *dev, uint32_t reg1, uint32_t pll1,
        uint32_t pll2, struct nouveau_pll_vals *pllvals)
{
 struct nouveau_drm *drm = nouveau_drm(dev);




 pllvals->log2P = (pll1 >> 16) & 0x7;
 pllvals->N2 = pllvals->M2 = 1;

 if (reg1 <= 0x405c) {
  pllvals->NM1 = pll2 & 0xffff;

  if (!(pll1 & 0x1100))
   pllvals->NM2 = pll2 >> 16;
 } else {
  pllvals->NM1 = pll1 & 0xffff;
  if (nv_two_reg_pll(dev) && pll2 & NV31_RAMDAC_ENABLE_VCO2)
   pllvals->NM2 = pll2 & 0xffff;
  else if (nv_device(drm->device)->chipset == 0x30 || nv_device(drm->device)->chipset == 0x35) {
   pllvals->M1 &= 0xf;
   if (pll1 & NV30_RAMDAC_ENABLE_VCO2) {
    pllvals->M2 = (pll1 >> 4) & 0x7;
    pllvals->N2 = ((pll1 >> 21) & 0x18) |
           ((pll1 >> 19) & 0x7);
   }
  }
 }
}
