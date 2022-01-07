
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fixed_mode; } ;
struct TYPE_4__ {TYPE_1__ panel; int edid; } ;
struct intel_lvds_connector {TYPE_2__ base; } ;
struct drm_display_mode {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_connector {struct drm_device* dev; } ;


 int IS_ERR_OR_NULL (int ) ;
 int drm_add_edid_modes (struct drm_connector*,int ) ;
 struct drm_display_mode* drm_mode_duplicate (struct drm_device*,int ) ;
 int drm_mode_probed_add (struct drm_connector*,struct drm_display_mode*) ;
 struct intel_lvds_connector* to_lvds_connector (struct drm_connector*) ;

__attribute__((used)) static int intel_lvds_get_modes(struct drm_connector *connector)
{
 struct intel_lvds_connector *lvds_connector = to_lvds_connector(connector);
 struct drm_device *dev = connector->dev;
 struct drm_display_mode *mode;


 if (!IS_ERR_OR_NULL(lvds_connector->base.edid))
  return drm_add_edid_modes(connector, lvds_connector->base.edid);

 mode = drm_mode_duplicate(dev, lvds_connector->base.panel.fixed_mode);
 if (mode == ((void*)0))
  return 0;

 drm_mode_probed_add(connector, mode);
 return 1;
}
