
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_crtc {int dummy; } ;
struct drm_crtc {int dummy; } ;


 int intel_put_pch_pll (struct intel_crtc*) ;
 struct intel_crtc* to_intel_crtc (struct drm_crtc*) ;

__attribute__((used)) static void ironlake_crtc_off(struct drm_crtc *crtc)
{
 struct intel_crtc *intel_crtc = to_intel_crtc(crtc);
 intel_put_pch_pll(intel_crtc);
}
