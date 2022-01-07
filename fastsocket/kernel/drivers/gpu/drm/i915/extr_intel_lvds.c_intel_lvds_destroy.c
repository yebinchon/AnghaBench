
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int panel; struct drm_connector* edid; } ;
struct TYPE_4__ {scalar_t__ notifier_call; } ;
struct intel_lvds_connector {TYPE_1__ base; TYPE_2__ lid_notifier; } ;
struct drm_connector {int dummy; } ;


 int IS_ERR_OR_NULL (struct drm_connector*) ;
 int acpi_lid_notifier_unregister (TYPE_2__*) ;
 int drm_connector_cleanup (struct drm_connector*) ;
 int drm_sysfs_connector_remove (struct drm_connector*) ;
 int intel_panel_fini (int *) ;
 int kfree (struct drm_connector*) ;
 struct intel_lvds_connector* to_lvds_connector (struct drm_connector*) ;

__attribute__((used)) static void intel_lvds_destroy(struct drm_connector *connector)
{
 struct intel_lvds_connector *lvds_connector =
  to_lvds_connector(connector);

 if (lvds_connector->lid_notifier.notifier_call)
  acpi_lid_notifier_unregister(&lvds_connector->lid_notifier);

 if (!IS_ERR_OR_NULL(lvds_connector->base.edid))
  kfree(lvds_connector->base.edid);

 intel_panel_fini(&lvds_connector->base.panel);

 drm_sysfs_connector_remove(connector);
 drm_connector_cleanup(connector);
 kfree(connector);
}
