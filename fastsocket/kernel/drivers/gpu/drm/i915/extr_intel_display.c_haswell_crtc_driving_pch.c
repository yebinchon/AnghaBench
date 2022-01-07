
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc {int dummy; } ;


 int INTEL_OUTPUT_ANALOG ;
 int intel_pipe_has_type (struct drm_crtc*,int ) ;

__attribute__((used)) static bool haswell_crtc_driving_pch(struct drm_crtc *crtc)
{
 return intel_pipe_has_type(crtc, INTEL_OUTPUT_ANALOG);
}
