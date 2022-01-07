
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_connector {struct drm_connector* con_priv; struct drm_connector* edid; } ;
struct drm_connector {int dummy; } ;


 int drm_connector_cleanup (struct drm_connector*) ;
 int drm_sysfs_connector_remove (struct drm_connector*) ;
 int kfree (struct drm_connector*) ;
 struct radeon_connector* to_radeon_connector (struct drm_connector*) ;

__attribute__((used)) static void radeon_connector_destroy(struct drm_connector *connector)
{
 struct radeon_connector *radeon_connector = to_radeon_connector(connector);

 if (radeon_connector->edid)
  kfree(radeon_connector->edid);
 kfree(radeon_connector->con_priv);
 drm_sysfs_connector_remove(connector);
 drm_connector_cleanup(connector);
 kfree(connector);
}
