
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int flags; int clock; } ;
struct drm_device {int dummy; } ;
struct drm_connector {struct drm_device* dev; } ;


 int DRM_MODE_FLAG_DBLSCAN ;
 scalar_t__ HAS_PCH_LPT (struct drm_device*) ;
 scalar_t__ IS_GEN2 (struct drm_device*) ;
 int MODE_CLOCK_HIGH ;
 int MODE_CLOCK_LOW ;
 int MODE_NO_DBLESCAN ;
 int MODE_OK ;
 int ironlake_get_lanes_required (int,int,int) ;

__attribute__((used)) static int intel_crt_mode_valid(struct drm_connector *connector,
    struct drm_display_mode *mode)
{
 struct drm_device *dev = connector->dev;

 int max_clock = 0;
 if (mode->flags & DRM_MODE_FLAG_DBLSCAN)
  return MODE_NO_DBLESCAN;

 if (mode->clock < 25000)
  return MODE_CLOCK_LOW;

 if (IS_GEN2(dev))
  max_clock = 350000;
 else
  max_clock = 400000;
 if (mode->clock > max_clock)
  return MODE_CLOCK_HIGH;


 if (HAS_PCH_LPT(dev) &&
     (ironlake_get_lanes_required(mode->clock, 270000, 24) > 2))
  return MODE_CLOCK_HIGH;

 return MODE_OK;
}
