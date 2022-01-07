
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_crtc {int cursor_x; int cursor_y; } ;
struct drm_crtc {int dummy; } ;


 int intel_crtc_update_cursor (struct drm_crtc*,int) ;
 struct intel_crtc* to_intel_crtc (struct drm_crtc*) ;

__attribute__((used)) static int intel_crtc_cursor_move(struct drm_crtc *crtc, int x, int y)
{
 struct intel_crtc *intel_crtc = to_intel_crtc(crtc);

 intel_crtc->cursor_x = x;
 intel_crtc->cursor_y = y;

 intel_crtc_update_cursor(crtc, 1);

 return 0;
}
