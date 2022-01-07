
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_connector {int dev; } ;


 int intel_panel_init_backlight (int ) ;

int intel_panel_setup_backlight(struct drm_connector *connector)
{
 intel_panel_init_backlight(connector->dev);
 return 0;
}
