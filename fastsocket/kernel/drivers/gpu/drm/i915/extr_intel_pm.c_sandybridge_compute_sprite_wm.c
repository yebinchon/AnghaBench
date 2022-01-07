
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct intel_watermark_params {int guard_size; int fifo_size; int cacheline_size; int max_wm; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {int clock; } ;
struct drm_crtc {TYPE_1__ mode; } ;


 int DIV_ROUND_UP (int,int) ;
 int intel_crtc_active (struct drm_crtc*) ;
 struct drm_crtc* intel_get_crtc_for_plane (struct drm_device*,int) ;

__attribute__((used)) static bool
sandybridge_compute_sprite_wm(struct drm_device *dev, int plane,
         uint32_t sprite_width, int pixel_size,
         const struct intel_watermark_params *display,
         int display_latency_ns, int *sprite_wm)
{
 struct drm_crtc *crtc;
 int clock;
 int entries, tlb_miss;

 crtc = intel_get_crtc_for_plane(dev, plane);
 if (!intel_crtc_active(crtc)) {
  *sprite_wm = display->guard_size;
  return 0;
 }

 clock = crtc->mode.clock;


 entries = ((clock * pixel_size / 1000) * display_latency_ns) / 1000;
 tlb_miss = display->fifo_size*display->cacheline_size -
  sprite_width * 8;
 if (tlb_miss > 0)
  entries += tlb_miss;
 entries = DIV_ROUND_UP(entries, display->cacheline_size);
 *sprite_wm = entries + display->guard_size;
 if (*sprite_wm > (int)display->max_wm)
  *sprite_wm = display->max_wm;

 return 1;
}
