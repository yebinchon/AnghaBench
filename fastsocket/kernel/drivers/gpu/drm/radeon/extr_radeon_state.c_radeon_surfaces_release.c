
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct drm_file {int dummy; } ;
struct TYPE_6__ {TYPE_1__* virt_surfaces; } ;
typedef TYPE_2__ drm_radeon_private_t ;
struct TYPE_5__ {int lower; struct drm_file* file_priv; } ;


 int RADEON_MAX_SURFACES ;
 int free_surface (struct drm_file*,TYPE_2__*,int ) ;

__attribute__((used)) static void radeon_surfaces_release(struct drm_file *file_priv,
        drm_radeon_private_t * dev_priv)
{
 int i;
 for (i = 0; i < 2 * RADEON_MAX_SURFACES; i++) {
  if (dev_priv->virt_surfaces[i].file_priv == file_priv)
   free_surface(file_priv, dev_priv,
         dev_priv->virt_surfaces[i].lower);
 }
}
