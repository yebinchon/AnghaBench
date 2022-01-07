
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder_helper_funcs {int (* dpms ) (struct drm_encoder*,int ) ;} ;
struct drm_encoder {struct drm_encoder_helper_funcs* helper_private; struct drm_crtc* crtc; } ;
struct drm_crtc_helper_funcs {int (* dpms ) (struct drm_crtc*,int ) ;} ;
struct drm_crtc {struct drm_crtc_helper_funcs* helper_private; } ;
struct drm_connector {int dpms; struct drm_encoder* encoder; } ;


 int drm_helper_choose_crtc_dpms (struct drm_crtc*) ;
 int drm_helper_choose_encoder_dpms (struct drm_encoder*) ;
 int stub1 (struct drm_crtc*,int ) ;
 int stub2 (struct drm_encoder*,int ) ;
 int stub3 (struct drm_encoder*,int ) ;
 int stub4 (struct drm_crtc*,int ) ;

void drm_helper_connector_dpms(struct drm_connector *connector, int mode)
{
 struct drm_encoder *encoder = connector->encoder;
 struct drm_crtc *crtc = encoder ? encoder->crtc : ((void*)0);
 int old_dpms;

 if (mode == connector->dpms)
  return;

 old_dpms = connector->dpms;
 connector->dpms = mode;


 if (mode < old_dpms) {
  if (crtc) {
   struct drm_crtc_helper_funcs *crtc_funcs = crtc->helper_private;
   if (crtc_funcs->dpms)
    (*crtc_funcs->dpms) (crtc,
           drm_helper_choose_crtc_dpms(crtc));
  }
  if (encoder) {
   struct drm_encoder_helper_funcs *encoder_funcs = encoder->helper_private;
   if (encoder_funcs->dpms)
    (*encoder_funcs->dpms) (encoder,
       drm_helper_choose_encoder_dpms(encoder));
  }
 }


 if (mode > old_dpms) {
  if (encoder) {
   struct drm_encoder_helper_funcs *encoder_funcs = encoder->helper_private;
   if (encoder_funcs->dpms)
    (*encoder_funcs->dpms) (encoder,
       drm_helper_choose_encoder_dpms(encoder));
  }
  if (crtc) {
   struct drm_crtc_helper_funcs *crtc_funcs = crtc->helper_private;
   if (crtc_funcs->dpms)
    (*crtc_funcs->dpms) (crtc,
           drm_helper_choose_crtc_dpms(crtc));
  }
 }

 return;
}
