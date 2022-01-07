
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nv17_tv_state {int ptv_200; } ;
struct nv17_tv_norm_params {scalar_t__ kind; } ;
struct nouveau_gpio {int (* set ) (struct nouveau_gpio*,int ,int ,int,int) ;} ;
struct nouveau_drm {int device; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {int dummy; } ;
struct TYPE_6__ {int last_dpms; TYPE_1__* dcb; } ;
struct TYPE_5__ {struct nv17_tv_state state; } ;
struct TYPE_4__ {int index; } ;


 scalar_t__ CTV_ENC_MODE ;
 int DCB_GPIO_TVDAC0 ;
 int DCB_GPIO_TVDAC1 ;
 int DRM_MODE_DPMS_OFF ;
 int DRM_MODE_DPMS_ON ;
 int NV_INFO (struct nouveau_drm*,char*,int,int ) ;
 struct nv17_tv_norm_params* get_tv_norm (struct drm_encoder*) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 TYPE_3__* nouveau_encoder (struct drm_encoder*) ;
 struct nouveau_gpio* nouveau_gpio (int ) ;
 int nv04_dac_update_dacclk (struct drm_encoder*,int) ;
 int nv04_dfp_update_fp_control (struct drm_encoder*,int) ;
 int nv_load_ptv (struct drm_device*,struct nv17_tv_state*,int) ;
 int stub1 (struct nouveau_gpio*,int ,int ,int,int) ;
 int stub2 (struct nouveau_gpio*,int ,int ,int,int) ;
 TYPE_2__* to_tv_enc (struct drm_encoder*) ;

__attribute__((used)) static void nv17_tv_dpms(struct drm_encoder *encoder, int mode)
{
 struct drm_device *dev = encoder->dev;
 struct nouveau_drm *drm = nouveau_drm(dev);
 struct nouveau_gpio *gpio = nouveau_gpio(drm->device);
 struct nv17_tv_state *regs = &to_tv_enc(encoder)->state;
 struct nv17_tv_norm_params *tv_norm = get_tv_norm(encoder);

 if (nouveau_encoder(encoder)->last_dpms == mode)
  return;
 nouveau_encoder(encoder)->last_dpms = mode;

 NV_INFO(drm, "Setting dpms mode %d on TV encoder (output %d)\n",
   mode, nouveau_encoder(encoder)->dcb->index);

 regs->ptv_200 &= ~1;

 if (tv_norm->kind == CTV_ENC_MODE) {
  nv04_dfp_update_fp_control(encoder, mode);

 } else {
  nv04_dfp_update_fp_control(encoder, DRM_MODE_DPMS_OFF);

  if (mode == DRM_MODE_DPMS_ON)
   regs->ptv_200 |= 1;
 }

 nv_load_ptv(dev, regs, 200);

 gpio->set(gpio, 0, DCB_GPIO_TVDAC1, 0xff, mode == DRM_MODE_DPMS_ON);
 gpio->set(gpio, 0, DCB_GPIO_TVDAC0, 0xff, mode == DRM_MODE_DPMS_ON);

 nv04_dac_update_dacclk(encoder, mode == DRM_MODE_DPMS_ON);
}
