
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int clock; } ;



__attribute__((used)) static int intel_sdvo_get_pixel_multiplier(struct drm_display_mode *mode)
{
 if (mode->clock >= 100000)
  return 1;
 else if (mode->clock >= 50000)
  return 2;
 else
  return 4;
}
