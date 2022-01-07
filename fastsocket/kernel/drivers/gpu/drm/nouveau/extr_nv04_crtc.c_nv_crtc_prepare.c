
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct nouveau_drm {int device; } ;
struct nouveau_crtc {int index; } ;
struct drm_device {int dummy; } ;
struct drm_crtc_helper_funcs {int (* dpms ) (struct drm_crtc*,int ) ;} ;
struct drm_crtc {struct drm_crtc_helper_funcs* helper_private; struct drm_device* dev; } ;
struct TYPE_2__ {scalar_t__ card_type; } ;


 int DRM_MODE_DPMS_OFF ;
 int NVBlankScreen (struct drm_device*,int ,int) ;
 int NVReadRAMDAC (struct drm_device*,int ,int ) ;
 int NVSetOwner (struct drm_device*,int ) ;
 int NVWriteCRTC (struct drm_device*,int ,int ,int ) ;
 int NVWriteRAMDAC (struct drm_device*,int ,int ,int) ;
 scalar_t__ NV_40 ;
 int NV_PCRTC_CONFIG ;
 int NV_PCRTC_CONFIG_START_ADDRESS_NON_VGA ;
 int NV_PRAMDAC_900 ;
 int drm_vblank_pre_modeset (struct drm_device*,int ) ;
 struct nouveau_crtc* nouveau_crtc (struct drm_crtc*) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 TYPE_1__* nv_device (int ) ;
 scalar_t__ nv_two_heads (struct drm_device*) ;
 int stub1 (struct drm_crtc*,int ) ;

__attribute__((used)) static void nv_crtc_prepare(struct drm_crtc *crtc)
{
 struct drm_device *dev = crtc->dev;
 struct nouveau_drm *drm = nouveau_drm(dev);
 struct nouveau_crtc *nv_crtc = nouveau_crtc(crtc);
 struct drm_crtc_helper_funcs *funcs = crtc->helper_private;

 if (nv_two_heads(dev))
  NVSetOwner(dev, nv_crtc->index);

 drm_vblank_pre_modeset(dev, nv_crtc->index);
 funcs->dpms(crtc, DRM_MODE_DPMS_OFF);

 NVBlankScreen(dev, nv_crtc->index, 1);


 NVWriteCRTC(dev, nv_crtc->index, NV_PCRTC_CONFIG, NV_PCRTC_CONFIG_START_ADDRESS_NON_VGA);
 if (nv_device(drm->device)->card_type == NV_40) {
  uint32_t reg900 = NVReadRAMDAC(dev, nv_crtc->index, NV_PRAMDAC_900);
  NVWriteRAMDAC(dev, nv_crtc->index, NV_PRAMDAC_900, reg900 & ~0x10000);
 }
}
