
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_device {int dummy; } ;
struct TYPE_3__ {int clock; } ;
struct drm_crtc {TYPE_2__* fb; TYPE_1__ mode; } ;
struct TYPE_4__ {int bits_per_pixel; } ;


 int DRAIN_LATENCY_PRECISION_16 ;
 int DRAIN_LATENCY_PRECISION_32 ;
 int intel_crtc_active (struct drm_crtc*) ;
 struct drm_crtc* intel_get_crtc_for_plane (struct drm_device*,int) ;

__attribute__((used)) static bool vlv_compute_drain_latency(struct drm_device *dev,
         int plane,
         int *plane_prec_mult,
         int *plane_dl,
         int *cursor_prec_mult,
         int *cursor_dl)
{
 struct drm_crtc *crtc;
 int clock, pixel_size;
 int entries;

 crtc = intel_get_crtc_for_plane(dev, plane);
 if (!intel_crtc_active(crtc))
  return 0;

 clock = crtc->mode.clock;
 pixel_size = crtc->fb->bits_per_pixel / 8;

 entries = (clock / 1000) * pixel_size;
 *plane_prec_mult = (entries > 256) ?
  DRAIN_LATENCY_PRECISION_32 : DRAIN_LATENCY_PRECISION_16;
 *plane_dl = (64 * (*plane_prec_mult) * 4) / ((clock / 1000) *
           pixel_size);

 entries = (clock / 1000) * 4;
 *cursor_prec_mult = (entries > 256) ?
  DRAIN_LATENCY_PRECISION_32 : DRAIN_LATENCY_PRECISION_16;
 *cursor_dl = (64 * (*cursor_prec_mult) * 4) / ((clock / 1000) * 4);

 return 1;
}
