
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int vdisplay; } ;



int drm_mode_height(const struct drm_display_mode *mode)
{
 return mode->vdisplay;
}
