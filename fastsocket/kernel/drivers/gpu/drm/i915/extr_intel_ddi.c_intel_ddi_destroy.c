
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int dummy; } ;


 int intel_dp_encoder_destroy (struct drm_encoder*) ;

__attribute__((used)) static void intel_ddi_destroy(struct drm_encoder *encoder)
{

 intel_dp_encoder_destroy(encoder);
}
