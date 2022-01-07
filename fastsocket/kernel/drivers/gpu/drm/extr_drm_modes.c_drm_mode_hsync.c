
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int hsync; int htotal; int clock; } ;



int drm_mode_hsync(const struct drm_display_mode *mode)
{
 unsigned int calc_val;

 if (mode->hsync)
  return mode->hsync;

 if (mode->htotal < 0)
  return 0;

 calc_val = (mode->clock * 1000) / mode->htotal;
 calc_val += 500;
 calc_val /= 1000;

 return calc_val;
}
