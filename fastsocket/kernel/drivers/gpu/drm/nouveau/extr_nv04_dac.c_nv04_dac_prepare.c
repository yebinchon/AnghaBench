
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_encoder_helper_funcs {int (* dpms ) (struct drm_encoder*,int ) ;} ;
struct drm_encoder {int crtc; struct drm_device* dev; struct drm_encoder_helper_funcs* helper_private; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {int index; } ;


 int DRM_MODE_DPMS_OFF ;
 TYPE_1__* nouveau_crtc (int ) ;
 int nv04_dfp_disable (struct drm_device*,int) ;
 int stub1 (struct drm_encoder*,int ) ;

__attribute__((used)) static void nv04_dac_prepare(struct drm_encoder *encoder)
{
 struct drm_encoder_helper_funcs *helper = encoder->helper_private;
 struct drm_device *dev = encoder->dev;
 int head = nouveau_crtc(encoder->crtc)->index;

 helper->dpms(encoder, DRM_MODE_DPMS_OFF);

 nv04_dfp_disable(dev, head);
}
