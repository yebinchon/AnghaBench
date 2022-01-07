
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct drm_display_mode* fixed_mode; } ;
struct intel_connector {TYPE_1__ panel; } ;
struct drm_display_mode {scalar_t__ hdisplay; scalar_t__ vdisplay; } ;
struct drm_connector {int dummy; } ;


 int MODE_OK ;
 int MODE_PANEL ;
 struct intel_connector* to_intel_connector (struct drm_connector*) ;

__attribute__((used)) static int intel_lvds_mode_valid(struct drm_connector *connector,
     struct drm_display_mode *mode)
{
 struct intel_connector *intel_connector = to_intel_connector(connector);
 struct drm_display_mode *fixed_mode = intel_connector->panel.fixed_mode;

 if (mode->hdisplay > fixed_mode->hdisplay)
  return MODE_PANEL;
 if (mode->vdisplay > fixed_mode->vdisplay)
  return MODE_PANEL;

 return MODE_OK;
}
