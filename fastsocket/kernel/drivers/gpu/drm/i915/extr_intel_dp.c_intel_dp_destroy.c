
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dp {int dummy; } ;
struct intel_connector {int panel; struct drm_connector* edid; } ;
struct drm_connector {int dummy; } ;


 int IS_ERR_OR_NULL (struct drm_connector*) ;
 int drm_connector_cleanup (struct drm_connector*) ;
 int drm_sysfs_connector_remove (struct drm_connector*) ;
 struct intel_dp* intel_attached_dp (struct drm_connector*) ;
 int intel_panel_fini (int *) ;
 scalar_t__ is_edp (struct intel_dp*) ;
 int kfree (struct drm_connector*) ;
 struct intel_connector* to_intel_connector (struct drm_connector*) ;

__attribute__((used)) static void
intel_dp_destroy(struct drm_connector *connector)
{
 struct intel_dp *intel_dp = intel_attached_dp(connector);
 struct intel_connector *intel_connector = to_intel_connector(connector);

 if (!IS_ERR_OR_NULL(intel_connector->edid))
  kfree(intel_connector->edid);

 if (is_edp(intel_dp))
  intel_panel_fini(&intel_connector->panel);

 drm_sysfs_connector_remove(connector);
 drm_connector_cleanup(connector);
 kfree(connector);
}
