
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct intel_watermark_params {int guard_size; int cacheline_size; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {int clock; } ;
struct drm_crtc {TYPE_1__ mode; } ;


 int DIV_ROUND_UP (int ,int ) ;
 struct drm_crtc* intel_get_crtc_for_plane (struct drm_device*,int) ;
 int min (int,int) ;

__attribute__((used)) static bool
sandybridge_compute_sprite_srwm(struct drm_device *dev, int plane,
    uint32_t sprite_width, int pixel_size,
    const struct intel_watermark_params *display,
    int latency_ns, int *sprite_wm)
{
 struct drm_crtc *crtc;
 unsigned long line_time_us;
 int clock;
 int line_count, line_size;
 int small, large;
 int entries;

 if (!latency_ns) {
  *sprite_wm = 0;
  return 0;
 }

 crtc = intel_get_crtc_for_plane(dev, plane);
 clock = crtc->mode.clock;
 if (!clock) {
  *sprite_wm = 0;
  return 0;
 }

 line_time_us = (sprite_width * 1000) / clock;
 if (!line_time_us) {
  *sprite_wm = 0;
  return 0;
 }

 line_count = (latency_ns / line_time_us + 1000) / 1000;
 line_size = sprite_width * pixel_size;


 small = ((clock * pixel_size / 1000) * latency_ns) / 1000;
 large = line_count * line_size;

 entries = DIV_ROUND_UP(min(small, large), display->cacheline_size);
 *sprite_wm = entries + display->guard_size;

 return *sprite_wm > 0x3ff ? 0 : 1;
}
