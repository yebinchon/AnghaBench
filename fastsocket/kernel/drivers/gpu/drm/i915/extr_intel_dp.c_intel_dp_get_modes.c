
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_dp {int adapter; } ;
struct TYPE_2__ {scalar_t__ fixed_mode; } ;
struct intel_connector {TYPE_1__ panel; } ;
struct drm_display_mode {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_connector {struct drm_device* dev; } ;


 struct drm_display_mode* drm_mode_duplicate (struct drm_device*,scalar_t__) ;
 int drm_mode_probed_add (struct drm_connector*,struct drm_display_mode*) ;
 struct intel_dp* intel_attached_dp (struct drm_connector*) ;
 int intel_dp_get_edid_modes (struct drm_connector*,int *) ;
 scalar_t__ is_edp (struct intel_dp*) ;
 struct intel_connector* to_intel_connector (struct drm_connector*) ;

__attribute__((used)) static int intel_dp_get_modes(struct drm_connector *connector)
{
 struct intel_dp *intel_dp = intel_attached_dp(connector);
 struct intel_connector *intel_connector = to_intel_connector(connector);
 struct drm_device *dev = connector->dev;
 int ret;




 ret = intel_dp_get_edid_modes(connector, &intel_dp->adapter);
 if (ret)
  return ret;


 if (is_edp(intel_dp) && intel_connector->panel.fixed_mode) {
  struct drm_display_mode *mode;
  mode = drm_mode_duplicate(dev,
       intel_connector->panel.fixed_mode);
  if (mode) {
   drm_mode_probed_add(connector, mode);
   return 1;
  }
 }
 return 0;
}
