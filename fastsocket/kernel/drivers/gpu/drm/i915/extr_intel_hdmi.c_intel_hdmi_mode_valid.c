
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int clock; int flags; } ;
struct drm_connector {int dummy; } ;


 int DRM_MODE_FLAG_DBLSCAN ;
 int MODE_CLOCK_HIGH ;
 int MODE_CLOCK_LOW ;
 int MODE_NO_DBLESCAN ;
 int MODE_OK ;

__attribute__((used)) static int intel_hdmi_mode_valid(struct drm_connector *connector,
     struct drm_display_mode *mode)
{
 if (mode->clock > 165000)
  return MODE_CLOCK_HIGH;
 if (mode->clock < 20000)
  return MODE_CLOCK_LOW;

 if (mode->flags & DRM_MODE_FLAG_DBLSCAN)
  return MODE_NO_DBLESCAN;

 return MODE_OK;
}
