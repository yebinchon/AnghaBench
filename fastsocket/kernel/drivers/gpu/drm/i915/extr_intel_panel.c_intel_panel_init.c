
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_panel {struct drm_display_mode* fixed_mode; } ;
struct drm_display_mode {int dummy; } ;



int intel_panel_init(struct intel_panel *panel,
       struct drm_display_mode *fixed_mode)
{
 panel->fixed_mode = fixed_mode;

 return 0;
}
