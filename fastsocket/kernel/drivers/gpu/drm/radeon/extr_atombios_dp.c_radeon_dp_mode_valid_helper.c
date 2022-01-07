
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_connector_atom_dig {int dpcd; } ;
struct radeon_connector {struct radeon_connector_atom_dig* con_priv; } ;
struct drm_display_mode {int clock; } ;
struct drm_connector {int dummy; } ;


 int MODE_CLOCK_HIGH ;
 int MODE_OK ;
 int radeon_connector_is_dp12_capable (struct drm_connector*) ;
 int radeon_dp_get_dp_link_clock (struct drm_connector*,int ,int ) ;
 struct radeon_connector* to_radeon_connector (struct drm_connector*) ;

int radeon_dp_mode_valid_helper(struct drm_connector *connector,
    struct drm_display_mode *mode)
{
 struct radeon_connector *radeon_connector = to_radeon_connector(connector);
 struct radeon_connector_atom_dig *dig_connector;
 int dp_clock;

 if (!radeon_connector->con_priv)
  return MODE_CLOCK_HIGH;
 dig_connector = radeon_connector->con_priv;

 dp_clock =
  radeon_dp_get_dp_link_clock(connector, dig_connector->dpcd, mode->clock);

 if ((dp_clock == 540000) &&
     (!radeon_connector_is_dp12_capable(connector)))
  return MODE_CLOCK_HIGH;

 return MODE_OK;
}
