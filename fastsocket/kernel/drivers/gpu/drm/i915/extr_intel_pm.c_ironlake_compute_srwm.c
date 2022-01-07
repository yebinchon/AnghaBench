
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_watermark_params {int cacheline_size; int guard_size; } ;
struct drm_device {int dummy; } ;
struct TYPE_3__ {int hdisplay; int htotal; int clock; } ;
struct drm_crtc {TYPE_2__* fb; TYPE_1__ mode; } ;
struct TYPE_4__ {int bits_per_pixel; } ;


 int DIV_ROUND_UP (int,int) ;
 struct drm_crtc* intel_get_crtc_for_plane (struct drm_device*,int) ;
 int ironlake_check_srwm (struct drm_device*,int,int,int,int,struct intel_watermark_params const*,struct intel_watermark_params const*) ;
 int min (int,int) ;

__attribute__((used)) static bool ironlake_compute_srwm(struct drm_device *dev, int level, int plane,
      int latency_ns,
      const struct intel_watermark_params *display,
      const struct intel_watermark_params *cursor,
      int *fbc_wm, int *display_wm, int *cursor_wm)
{
 struct drm_crtc *crtc;
 unsigned long line_time_us;
 int hdisplay, htotal, pixel_size, clock;
 int line_count, line_size;
 int small, large;
 int entries;

 if (!latency_ns) {
  *fbc_wm = *display_wm = *cursor_wm = 0;
  return 0;
 }

 crtc = intel_get_crtc_for_plane(dev, plane);
 hdisplay = crtc->mode.hdisplay;
 htotal = crtc->mode.htotal;
 clock = crtc->mode.clock;
 pixel_size = crtc->fb->bits_per_pixel / 8;

 line_time_us = (htotal * 1000) / clock;
 line_count = (latency_ns / line_time_us + 1000) / 1000;
 line_size = hdisplay * pixel_size;


 small = ((clock * pixel_size / 1000) * latency_ns) / 1000;
 large = line_count * line_size;

 entries = DIV_ROUND_UP(min(small, large), display->cacheline_size);
 *display_wm = entries + display->guard_size;





 *fbc_wm = DIV_ROUND_UP(*display_wm * 64, line_size) + 2;


 entries = line_count * pixel_size * 64;
 entries = DIV_ROUND_UP(entries, cursor->cacheline_size);
 *cursor_wm = entries + cursor->guard_size;

 return ironlake_check_srwm(dev, level,
       *fbc_wm, *display_wm, *cursor_wm,
       display, cursor);
}
