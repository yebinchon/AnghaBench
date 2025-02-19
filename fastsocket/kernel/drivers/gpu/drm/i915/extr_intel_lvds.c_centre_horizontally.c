
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_display_mode {int crtc_hsync_end; int crtc_hsync_start; int crtc_hblank_end; int crtc_hblank_start; int hdisplay; int crtc_hdisplay; int private_flags; } ;


 int INTEL_MODE_CRTC_TIMINGS_SET ;

__attribute__((used)) static void
centre_horizontally(struct drm_display_mode *mode,
      int width)
{
 u32 border, sync_pos, blank_width, sync_width;


 sync_width = mode->crtc_hsync_end - mode->crtc_hsync_start;
 blank_width = mode->crtc_hblank_end - mode->crtc_hblank_start;
 sync_pos = (blank_width - sync_width + 1) / 2;

 border = (mode->hdisplay - width + 1) / 2;
 border += border & 1;

 mode->crtc_hdisplay = width;
 mode->crtc_hblank_start = width + border;
 mode->crtc_hblank_end = mode->crtc_hblank_start + blank_width;

 mode->crtc_hsync_start = mode->crtc_hblank_start + sync_pos;
 mode->crtc_hsync_end = mode->crtc_hsync_start + sync_width;

 mode->private_flags |= INTEL_MODE_CRTC_TIMINGS_SET;
}
