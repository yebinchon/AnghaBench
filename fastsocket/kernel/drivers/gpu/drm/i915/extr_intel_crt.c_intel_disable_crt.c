
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_encoder {int dummy; } ;


 int DRM_MODE_DPMS_OFF ;
 int intel_crt_set_dpms (struct intel_encoder*,int ) ;

__attribute__((used)) static void intel_disable_crt(struct intel_encoder *encoder)
{
 intel_crt_set_dpms(encoder, DRM_MODE_DPMS_OFF);
}
