
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int hdisplay; int vdisplay; } ;
struct drm_connector {int dummy; } ;


 int MODE_CLOCK_RANGE ;
 int MODE_OK ;

__attribute__((used)) static int radeon_tv_mode_valid(struct drm_connector *connector,
    struct drm_display_mode *mode)
{
 if ((mode->hdisplay > 1024) || (mode->vdisplay > 768))
  return MODE_CLOCK_RANGE;
 return MODE_OK;
}
