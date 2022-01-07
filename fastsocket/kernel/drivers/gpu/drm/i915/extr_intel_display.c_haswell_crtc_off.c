
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_crtc {int cpu_transcoder; scalar_t__ pipe; } ;
struct drm_crtc {int dummy; } ;
typedef enum transcoder { ____Placeholder_transcoder } transcoder ;


 int intel_ddi_put_crtc_pll (struct drm_crtc*) ;
 struct intel_crtc* to_intel_crtc (struct drm_crtc*) ;

__attribute__((used)) static void haswell_crtc_off(struct drm_crtc *crtc)
{
 struct intel_crtc *intel_crtc = to_intel_crtc(crtc);



 intel_crtc->cpu_transcoder = (enum transcoder) intel_crtc->pipe;

 intel_ddi_put_crtc_pll(crtc);
}
