
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_file {int dummy; } ;
struct drm_device {int * dev_private; } ;
struct TYPE_2__ {int address; } ;
typedef TYPE_1__ drm_radeon_surface_free_t ;
typedef int drm_radeon_private_t ;


 int EINVAL ;
 scalar_t__ free_surface (struct drm_file*,int *,int ) ;

__attribute__((used)) static int radeon_surface_free(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
 drm_radeon_private_t *dev_priv = dev->dev_private;
 drm_radeon_surface_free_t *memfree = data;

 if (free_surface(file_priv, dev_priv, memfree->address))
  return -EINVAL;
 else
  return 0;
}
