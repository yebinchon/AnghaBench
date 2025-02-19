
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct nv04_mode_state {struct nv04_crtc_reg* crtc_reg; } ;
struct nv04_crtc_reg {scalar_t__ crtc_eng_ctrl; scalar_t__ cursor_cfg; scalar_t__ crtc_830; scalar_t__ crtc_834; scalar_t__ gpio_ext; scalar_t__ crtc_850; scalar_t__ crtc_cfg; scalar_t__ fb_start; int * CR58; } ;
struct nouveau_timer {int dummy; } ;
struct nouveau_drm {int device; } ;
struct nouveau_device {scalar_t__ card_type; } ;
struct drm_device {int dummy; } ;


 scalar_t__ NV10_PCRTC_CONFIG_START_ADDRESS_HSYNC ;
 int NVReadRAMDAC (struct drm_device*,int,int ) ;
 int NVWriteCRTC (struct drm_device*,int,int ,scalar_t__) ;
 int NVWriteRAMDAC (struct drm_device*,int,int ,int) ;
 int NVWriteVgaCrtc5758 (struct drm_device*,int,int,int ) ;
 scalar_t__ NV_10 ;
 scalar_t__ NV_20 ;
 scalar_t__ NV_30 ;
 scalar_t__ NV_40 ;
 int NV_CIO_CRE_42 ;
 int NV_CIO_CRE_47 ;
 int NV_CIO_CRE_49 ;
 int NV_CIO_CRE_4B ;
 int NV_CIO_CRE_53 ;
 int NV_CIO_CRE_54 ;
 int NV_CIO_CRE_59 ;
 int NV_CIO_CRE_5B ;
 int NV_CIO_CRE_85 ;
 int NV_CIO_CRE_86 ;
 int NV_CIO_CRE_CSB ;
 int NV_CIO_CRE_EBR_INDEX ;
 int NV_CIO_CRE_ENH_INDEX ;
 int NV_CIO_CRE_FFLWM__INDEX ;
 int NV_CIO_CRE_FF_INDEX ;
 int NV_CIO_CRE_HCUR_ADDR0_INDEX ;
 int NV_CIO_CRE_HCUR_ADDR1_INDEX ;
 int NV_CIO_CRE_HCUR_ADDR2_INDEX ;
 int NV_CIO_CRE_HEB__INDEX ;
 int NV_CIO_CRE_ILACE__INDEX ;
 int NV_CIO_CRE_LCD__INDEX ;
 int NV_CIO_CRE_LSR_INDEX ;
 int NV_CIO_CRE_PIXEL_INDEX ;
 int NV_CIO_CRE_RPC0_INDEX ;
 int NV_CIO_CRE_RPC1_INDEX ;
 int NV_CIO_CRE_SCRATCH3__INDEX ;
 int NV_CIO_CRE_SCRATCH4__INDEX ;
 int NV_CIO_CRE_TVOUT_LATENCY ;
 int NV_PBUS_POWERCTRL_2 ;
 int NV_PCRTC_830 ;
 int NV_PCRTC_834 ;
 int NV_PCRTC_850 ;
 int NV_PCRTC_CONFIG ;
 int NV_PCRTC_CURSOR_CONFIG ;
 int NV_PCRTC_ENGINE_CTRL ;
 int NV_PCRTC_GPIO_EXT ;
 int NV_PCRTC_START ;
 int NV_PRAMDAC_900 ;
 int NV_PRMCIO_INP0__COLOR ;
 int NV_PVIDEO_INTR_EN ;
 int NV_PVIDEO_LIMIT (int) ;
 int NV_PVIDEO_OFFSET_BUFF (int) ;
 int NV_PVIDEO_STOP ;
 int NV_PVIDEO_UVPLANE_LIMIT (int) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 struct nouveau_timer* nouveau_timer (struct nouveau_device*) ;
 int nouveau_timer_wait_eq (struct nouveau_timer*,int,int ,int,int) ;
 struct nouveau_device* nv_device (int ) ;
 int nv_fix_nv40_hw_cursor (struct drm_device*,int) ;
 scalar_t__ nv_gf4_disp_arch (struct drm_device*) ;
 scalar_t__ nv_two_heads (struct drm_device*) ;
 int nv_wr32 (struct nouveau_device*,int ,int) ;
 int wr_cio_state (struct drm_device*,int,struct nv04_crtc_reg*,int) ;

__attribute__((used)) static void
nv_load_state_ext(struct drm_device *dev, int head,
    struct nv04_mode_state *state)
{
 struct nouveau_drm *drm = nouveau_drm(dev);
 struct nouveau_device *device = nv_device(drm->device);
 struct nouveau_timer *ptimer = nouveau_timer(device);
 struct nv04_crtc_reg *regp = &state->crtc_reg[head];
 uint32_t reg900;
 int i;

 if (nv_device(drm->device)->card_type >= NV_10) {
  if (nv_two_heads(dev))




   NVWriteCRTC(dev, head, NV_PCRTC_ENGINE_CTRL, regp->crtc_eng_ctrl);

  nv_wr32(device, NV_PVIDEO_STOP, 1);
  nv_wr32(device, NV_PVIDEO_INTR_EN, 0);
  nv_wr32(device, NV_PVIDEO_OFFSET_BUFF(0), 0);
  nv_wr32(device, NV_PVIDEO_OFFSET_BUFF(1), 0);
  nv_wr32(device, NV_PVIDEO_LIMIT(0), 0);
  nv_wr32(device, NV_PVIDEO_LIMIT(1), 0);
  nv_wr32(device, NV_PVIDEO_UVPLANE_LIMIT(0), 0);
  nv_wr32(device, NV_PVIDEO_UVPLANE_LIMIT(1), 0);
  nv_wr32(device, NV_PBUS_POWERCTRL_2, 0);

  NVWriteCRTC(dev, head, NV_PCRTC_CURSOR_CONFIG, regp->cursor_cfg);
  NVWriteCRTC(dev, head, NV_PCRTC_830, regp->crtc_830);
  NVWriteCRTC(dev, head, NV_PCRTC_834, regp->crtc_834);

  if (nv_device(drm->device)->card_type >= NV_30)
   NVWriteCRTC(dev, head, NV_PCRTC_GPIO_EXT, regp->gpio_ext);

  if (nv_device(drm->device)->card_type == NV_40) {
   NVWriteCRTC(dev, head, NV_PCRTC_850, regp->crtc_850);

   reg900 = NVReadRAMDAC(dev, head, NV_PRAMDAC_900);
   if (regp->crtc_cfg == NV10_PCRTC_CONFIG_START_ADDRESS_HSYNC)
    NVWriteRAMDAC(dev, head, NV_PRAMDAC_900, reg900 | 0x10000);
   else
    NVWriteRAMDAC(dev, head, NV_PRAMDAC_900, reg900 & ~0x10000);
  }
 }

 NVWriteCRTC(dev, head, NV_PCRTC_CONFIG, regp->crtc_cfg);

 wr_cio_state(dev, head, regp, NV_CIO_CRE_RPC0_INDEX);
 wr_cio_state(dev, head, regp, NV_CIO_CRE_RPC1_INDEX);
 wr_cio_state(dev, head, regp, NV_CIO_CRE_LSR_INDEX);
 wr_cio_state(dev, head, regp, NV_CIO_CRE_PIXEL_INDEX);
 wr_cio_state(dev, head, regp, NV_CIO_CRE_LCD__INDEX);
 wr_cio_state(dev, head, regp, NV_CIO_CRE_HEB__INDEX);
 wr_cio_state(dev, head, regp, NV_CIO_CRE_ENH_INDEX);
 wr_cio_state(dev, head, regp, NV_CIO_CRE_FF_INDEX);
 wr_cio_state(dev, head, regp, NV_CIO_CRE_FFLWM__INDEX);

 if (nv_device(drm->device)->card_type >= NV_20)
  wr_cio_state(dev, head, regp, NV_CIO_CRE_47);

 if (nv_device(drm->device)->card_type >= NV_30)
  wr_cio_state(dev, head, regp, 0x9f);

 wr_cio_state(dev, head, regp, NV_CIO_CRE_49);
 wr_cio_state(dev, head, regp, NV_CIO_CRE_HCUR_ADDR0_INDEX);
 wr_cio_state(dev, head, regp, NV_CIO_CRE_HCUR_ADDR1_INDEX);
 wr_cio_state(dev, head, regp, NV_CIO_CRE_HCUR_ADDR2_INDEX);
 if (nv_device(drm->device)->card_type == NV_40)
  nv_fix_nv40_hw_cursor(dev, head);
 wr_cio_state(dev, head, regp, NV_CIO_CRE_ILACE__INDEX);

 wr_cio_state(dev, head, regp, NV_CIO_CRE_SCRATCH3__INDEX);
 wr_cio_state(dev, head, regp, NV_CIO_CRE_SCRATCH4__INDEX);
 if (nv_device(drm->device)->card_type >= NV_10) {
  wr_cio_state(dev, head, regp, NV_CIO_CRE_EBR_INDEX);
  wr_cio_state(dev, head, regp, NV_CIO_CRE_CSB);
  wr_cio_state(dev, head, regp, NV_CIO_CRE_4B);
  wr_cio_state(dev, head, regp, NV_CIO_CRE_TVOUT_LATENCY);
 }

 if (nv_gf4_disp_arch(dev)) {
  if (nv_device(drm->device)->card_type == NV_10) {


   nouveau_timer_wait_eq(ptimer, 650000000, NV_PRMCIO_INP0__COLOR, 0x8, 0x8);
   nouveau_timer_wait_eq(ptimer, 650000000, NV_PRMCIO_INP0__COLOR, 0x8, 0x0);
  }

  wr_cio_state(dev, head, regp, NV_CIO_CRE_42);
  wr_cio_state(dev, head, regp, NV_CIO_CRE_53);
  wr_cio_state(dev, head, regp, NV_CIO_CRE_54);

  for (i = 0; i < 0x10; i++)
   NVWriteVgaCrtc5758(dev, head, i, regp->CR58[i]);
  wr_cio_state(dev, head, regp, NV_CIO_CRE_59);
  wr_cio_state(dev, head, regp, NV_CIO_CRE_5B);

  wr_cio_state(dev, head, regp, NV_CIO_CRE_85);
  wr_cio_state(dev, head, regp, NV_CIO_CRE_86);
 }

 NVWriteCRTC(dev, head, NV_PCRTC_START, regp->fb_start);
}
