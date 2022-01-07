
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_radeon_driver_file_fields {int dummy; } ;
struct drm_file {struct drm_radeon_driver_file_fields* driver_priv; } ;
struct drm_device {int dummy; } ;


 int kfree (struct drm_radeon_driver_file_fields*) ;

void radeon_driver_postclose(struct drm_device *dev, struct drm_file *file_priv)
{
 struct drm_radeon_driver_file_fields *radeon_priv =
     file_priv->driver_priv;

 kfree(radeon_priv);
}
