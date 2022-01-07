
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_connector {int use_digital; } ;
struct drm_connector {scalar_t__ force; } ;


 scalar_t__ DRM_FORCE_ON ;
 scalar_t__ DRM_FORCE_ON_DIGITAL ;
 struct radeon_connector* to_radeon_connector (struct drm_connector*) ;

__attribute__((used)) static void radeon_dvi_force(struct drm_connector *connector)
{
 struct radeon_connector *radeon_connector = to_radeon_connector(connector);
 if (connector->force == DRM_FORCE_ON)
  radeon_connector->use_digital = 0;
 if (connector->force == DRM_FORCE_ON_DIGITAL)
  radeon_connector->use_digital = 1;
}
