
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_sdvo_connector {scalar_t__ tv_format; } ;
struct drm_connector {int dev; } ;


 int drm_connector_cleanup (struct drm_connector*) ;
 int drm_property_destroy (int ,scalar_t__) ;
 int drm_sysfs_connector_remove (struct drm_connector*) ;
 int intel_sdvo_destroy_enhance_property (struct drm_connector*) ;
 int kfree (struct intel_sdvo_connector*) ;
 struct intel_sdvo_connector* to_intel_sdvo_connector (struct drm_connector*) ;

__attribute__((used)) static void intel_sdvo_destroy(struct drm_connector *connector)
{
 struct intel_sdvo_connector *intel_sdvo_connector = to_intel_sdvo_connector(connector);

 if (intel_sdvo_connector->tv_format)
  drm_property_destroy(connector->dev,
         intel_sdvo_connector->tv_format);

 intel_sdvo_destroy_enhance_property(connector);
 drm_sysfs_connector_remove(connector);
 drm_connector_cleanup(connector);
 kfree(intel_sdvo_connector);
}
