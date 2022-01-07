
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {unsigned int htotal; unsigned int vtotal; int clock; unsigned int hdisplay; unsigned int vdisplay; } ;



__attribute__((used)) static unsigned radeon_mode_bandwidth(struct drm_display_mode *mode, int bytes_per_pixel)
{
 unsigned a_active, a_total, tmp;

 if (!mode->htotal || !mode->vtotal || !mode->clock) {
  return 0;
 }

 a_active = mode->hdisplay * mode->vdisplay;
 a_total = mode->htotal * mode->vtotal;
 tmp = ((mode->clock >> 10) * bytes_per_pixel * (a_active >> 10)) * 1000;
 return tmp/(a_total);
}
