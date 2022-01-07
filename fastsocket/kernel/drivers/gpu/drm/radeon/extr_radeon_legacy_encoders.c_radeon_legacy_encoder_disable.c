
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_encoder {scalar_t__ active_device; } ;
struct drm_encoder_helper_funcs {int (* dpms ) (struct drm_encoder*,int ) ;} ;
struct drm_encoder {struct drm_encoder_helper_funcs* helper_private; } ;


 int DRM_MODE_DPMS_OFF ;
 int stub1 (struct drm_encoder*,int ) ;
 struct radeon_encoder* to_radeon_encoder (struct drm_encoder*) ;

__attribute__((used)) static void radeon_legacy_encoder_disable(struct drm_encoder *encoder)
{
 struct radeon_encoder *radeon_encoder = to_radeon_encoder(encoder);
 struct drm_encoder_helper_funcs *encoder_funcs;

 encoder_funcs = encoder->helper_private;
 encoder_funcs->dpms(encoder, DRM_MODE_DPMS_OFF);
 radeon_encoder->active_device = 0;
}
