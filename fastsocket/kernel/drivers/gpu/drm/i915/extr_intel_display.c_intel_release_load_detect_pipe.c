
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct intel_load_detect_pipe {scalar_t__ dpms_mode; scalar_t__ release_fb; scalar_t__ load_detect_temp; } ;
struct TYPE_6__ {int id; } ;
struct drm_encoder {TYPE_2__ base; struct drm_crtc* crtc; } ;
struct intel_encoder {int * new_crtc; struct drm_encoder base; } ;
struct drm_crtc {int mutex; } ;
struct TYPE_5__ {int id; } ;
struct drm_connector {TYPE_3__* funcs; TYPE_1__ base; } ;
struct TYPE_8__ {int * new_encoder; } ;
struct TYPE_7__ {int (* dpms ) (struct drm_connector*,scalar_t__) ;} ;


 int DRM_DEBUG_KMS (char*,int ,int ,int ,int ) ;
 scalar_t__ DRM_MODE_DPMS_ON ;
 int drm_framebuffer_unreference (scalar_t__) ;
 int drm_framebuffer_unregister_private (scalar_t__) ;
 int drm_get_connector_name (struct drm_connector*) ;
 int drm_get_encoder_name (struct drm_encoder*) ;
 struct intel_encoder* intel_attached_encoder (struct drm_connector*) ;
 int intel_set_mode (struct drm_crtc*,int *,int ,int ,int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct drm_connector*,scalar_t__) ;
 TYPE_4__* to_intel_connector (struct drm_connector*) ;

void intel_release_load_detect_pipe(struct drm_connector *connector,
        struct intel_load_detect_pipe *old)
{
 struct intel_encoder *intel_encoder =
  intel_attached_encoder(connector);
 struct drm_encoder *encoder = &intel_encoder->base;
 struct drm_crtc *crtc = encoder->crtc;

 DRM_DEBUG_KMS("[CONNECTOR:%d:%s], [ENCODER:%d:%s]\n",
        connector->base.id, drm_get_connector_name(connector),
        encoder->base.id, drm_get_encoder_name(encoder));

 if (old->load_detect_temp) {
  to_intel_connector(connector)->new_encoder = ((void*)0);
  intel_encoder->new_crtc = ((void*)0);
  intel_set_mode(crtc, ((void*)0), 0, 0, ((void*)0));

  if (old->release_fb) {
   drm_framebuffer_unregister_private(old->release_fb);
   drm_framebuffer_unreference(old->release_fb);
  }

  mutex_unlock(&crtc->mutex);
  return;
 }


 if (old->dpms_mode != DRM_MODE_DPMS_ON)
  connector->funcs->dpms(connector, old->dpms_mode);

 mutex_unlock(&crtc->mutex);
}
