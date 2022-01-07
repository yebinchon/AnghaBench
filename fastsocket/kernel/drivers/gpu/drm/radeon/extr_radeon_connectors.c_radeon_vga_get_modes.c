
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_connector {int dummy; } ;
struct drm_connector {int dummy; } ;


 int radeon_ddc_get_modes (struct radeon_connector*) ;
 struct radeon_connector* to_radeon_connector (struct drm_connector*) ;

__attribute__((used)) static int radeon_vga_get_modes(struct drm_connector *connector)
{
 struct radeon_connector *radeon_connector = to_radeon_connector(connector);
 int ret;

 ret = radeon_ddc_get_modes(radeon_connector);

 return ret;
}
