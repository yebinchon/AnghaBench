
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nouveau_encoder {int last_dpms; TYPE_1__* dcb; } ;
struct nouveau_drm {int dummy; } ;
struct drm_encoder {int dev; } ;
struct TYPE_2__ {int index; } ;


 int DRM_MODE_DPMS_ON ;
 int NV_DEBUG (struct nouveau_drm*,char*,int,int ) ;
 struct nouveau_drm* nouveau_drm (int ) ;
 struct nouveau_encoder* nouveau_encoder (struct drm_encoder*) ;
 int nv04_dac_update_dacclk (struct drm_encoder*,int) ;

__attribute__((used)) static void nv04_dac_dpms(struct drm_encoder *encoder, int mode)
{
 struct nouveau_encoder *nv_encoder = nouveau_encoder(encoder);
 struct nouveau_drm *drm = nouveau_drm(encoder->dev);

 if (nv_encoder->last_dpms == mode)
  return;
 nv_encoder->last_dpms = mode;

 NV_DEBUG(drm, "Setting dpms mode %d on vga encoder (output %d)\n",
   mode, nv_encoder->dcb->index);

 nv04_dac_update_dacclk(encoder, mode == DRM_MODE_DPMS_ON);
}
