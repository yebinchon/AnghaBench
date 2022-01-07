
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_file {int dummy; } ;
struct drm_device {int * dev_private; } ;
typedef int drm_radeon_surface_alloc_t ;
typedef int drm_radeon_private_t ;


 int EINVAL ;
 int alloc_surface (int *,int *,struct drm_file*) ;

__attribute__((used)) static int radeon_surface_alloc(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
 drm_radeon_private_t *dev_priv = dev->dev_private;
 drm_radeon_surface_alloc_t *alloc = data;

 if (alloc_surface(alloc, dev_priv, file_priv) == -1)
  return -EINVAL;
 else
  return 0;
}
