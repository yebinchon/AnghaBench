
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_connector_atom_dig {scalar_t__ dp_i2c_bus; } ;
struct radeon_connector {struct radeon_connector_atom_dig* con_priv; struct radeon_connector_atom_dig* edid; } ;
struct drm_connector {scalar_t__ dp_i2c_bus; } ;


 int drm_connector_cleanup (struct radeon_connector_atom_dig*) ;
 int drm_sysfs_connector_remove (struct radeon_connector_atom_dig*) ;
 int kfree (struct radeon_connector_atom_dig*) ;
 int radeon_i2c_destroy (scalar_t__) ;
 struct radeon_connector* to_radeon_connector (struct radeon_connector_atom_dig*) ;

__attribute__((used)) static void radeon_dp_connector_destroy(struct drm_connector *connector)
{
 struct radeon_connector *radeon_connector = to_radeon_connector(connector);
 struct radeon_connector_atom_dig *radeon_dig_connector = radeon_connector->con_priv;

 if (radeon_connector->edid)
  kfree(radeon_connector->edid);
 if (radeon_dig_connector->dp_i2c_bus)
  radeon_i2c_destroy(radeon_dig_connector->dp_i2c_bus);
 kfree(radeon_connector->con_priv);
 drm_sysfs_connector_remove(connector);
 drm_connector_cleanup(connector);
 kfree(connector);
}
