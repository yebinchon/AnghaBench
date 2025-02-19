
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_pixel_clock; } ;
struct radeon_device {scalar_t__ family; TYPE_1__ clock; } ;
struct radeon_connector {scalar_t__ connector_object_id; scalar_t__ use_digital; } ;
struct drm_display_mode {int clock; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct drm_connector {struct drm_device* dev; } ;


 scalar_t__ ASIC_IS_DCE6 (struct radeon_device*) ;
 scalar_t__ ASIC_IS_RN50 (struct radeon_device*) ;
 scalar_t__ CHIP_RV100 ;
 scalar_t__ CONNECTOR_OBJECT_ID_DUAL_LINK_DVI_D ;
 scalar_t__ CONNECTOR_OBJECT_ID_DUAL_LINK_DVI_I ;
 scalar_t__ CONNECTOR_OBJECT_ID_HDMI_TYPE_A ;
 scalar_t__ CONNECTOR_OBJECT_ID_HDMI_TYPE_B ;
 int MODE_CLOCK_HIGH ;
 int MODE_OK ;
 int radeon_mode_bandwidth (struct drm_display_mode*,int) ;
 struct radeon_connector* to_radeon_connector (struct drm_connector*) ;

__attribute__((used)) static int radeon_dvi_mode_valid(struct drm_connector *connector,
      struct drm_display_mode *mode)
{
 struct drm_device *dev = connector->dev;
 struct radeon_device *rdev = dev->dev_private;
 struct radeon_connector *radeon_connector = to_radeon_connector(connector);




 if (radeon_connector->use_digital &&
     (rdev->family == CHIP_RV100) &&
     (mode->clock > 135000))
  return MODE_CLOCK_HIGH;

 if (radeon_connector->use_digital && (mode->clock > 165000)) {
  if ((radeon_connector->connector_object_id == CONNECTOR_OBJECT_ID_DUAL_LINK_DVI_I) ||
      (radeon_connector->connector_object_id == CONNECTOR_OBJECT_ID_DUAL_LINK_DVI_D) ||
      (radeon_connector->connector_object_id == CONNECTOR_OBJECT_ID_HDMI_TYPE_B))
   return MODE_OK;
  else if (radeon_connector->connector_object_id == CONNECTOR_OBJECT_ID_HDMI_TYPE_A) {
   if (ASIC_IS_DCE6(rdev)) {

    if (mode->clock > 340000)
     return MODE_CLOCK_HIGH;
    else
     return MODE_OK;
   } else
    return MODE_CLOCK_HIGH;
  } else
   return MODE_CLOCK_HIGH;
 }


 if ((mode->clock / 10) > rdev->clock.max_pixel_clock)
  return MODE_CLOCK_HIGH;
 if (ASIC_IS_RN50(rdev) && radeon_mode_bandwidth(mode, 4) > 300) {
  return MODE_CLOCK_HIGH;
 }

 return MODE_OK;
}
