
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_display_mode {int crtc_vsync_end; int crtc_vsync_start; int crtc_vblank_end; int crtc_vblank_start; int vdisplay; int crtc_vdisplay; int private_flags; } ;


 int INTEL_MODE_CRTC_TIMINGS_SET ;

__attribute__((used)) static void
centre_vertically(struct drm_display_mode *mode,
    int height)
{
 u32 border, sync_pos, blank_width, sync_width;


 sync_width = mode->crtc_vsync_end - mode->crtc_vsync_start;
 blank_width = mode->crtc_vblank_end - mode->crtc_vblank_start;
 sync_pos = (blank_width - sync_width + 1) / 2;

 border = (mode->vdisplay - height + 1) / 2;

 mode->crtc_vdisplay = height;
 mode->crtc_vblank_start = height + border;
 mode->crtc_vblank_end = mode->crtc_vblank_start + blank_width;

 mode->crtc_vsync_start = mode->crtc_vblank_start + sync_pos;
 mode->crtc_vsync_end = mode->crtc_vsync_start + sync_width;

 mode->private_flags |= INTEL_MODE_CRTC_TIMINGS_SET;
}
