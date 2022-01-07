
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct radeon_virt_surface {scalar_t__ file_priv; int surface_index; scalar_t__ upper; scalar_t__ lower; scalar_t__ flags; } ;
struct radeon_surface {int refcount; scalar_t__ upper; scalar_t__ lower; scalar_t__ flags; } ;
struct drm_ati_pcigart_info {scalar_t__ table_size; scalar_t__ bus_addr; } ;
struct TYPE_3__ {struct radeon_surface* surfaces; struct radeon_virt_surface* virt_surfaces; struct drm_ati_pcigart_info gart_info; } ;
typedef TYPE_1__ drm_radeon_private_t ;


 int ENOMEM ;
 scalar_t__ PCIGART_FILE_PRIV ;
 int RADEON_MAX_SURFACES ;
 scalar_t__ RADEON_SURFACE0_INFO ;
 scalar_t__ RADEON_SURFACE0_LOWER_BOUND ;
 scalar_t__ RADEON_SURFACE0_UPPER_BOUND ;
 int RADEON_WRITE (scalar_t__,scalar_t__) ;

__attribute__((used)) static int radeon_setup_pcigart_surface(drm_radeon_private_t *dev_priv)
{
 struct drm_ati_pcigart_info *gart_info = &dev_priv->gart_info;
 struct radeon_virt_surface *vp;
 int i;

 for (i = 0; i < RADEON_MAX_SURFACES * 2; i++) {
  if (!dev_priv->virt_surfaces[i].file_priv ||
      dev_priv->virt_surfaces[i].file_priv == PCIGART_FILE_PRIV)
   break;
 }
 if (i >= 2 * RADEON_MAX_SURFACES)
  return -ENOMEM;
 vp = &dev_priv->virt_surfaces[i];

 for (i = 0; i < RADEON_MAX_SURFACES; i++) {
  struct radeon_surface *sp = &dev_priv->surfaces[i];
  if (sp->refcount)
   continue;

  vp->surface_index = i;
  vp->lower = gart_info->bus_addr;
  vp->upper = vp->lower + gart_info->table_size;
  vp->flags = 0;
  vp->file_priv = PCIGART_FILE_PRIV;

  sp->refcount = 1;
  sp->lower = vp->lower;
  sp->upper = vp->upper;
  sp->flags = 0;

  RADEON_WRITE(RADEON_SURFACE0_INFO + 16 * i, sp->flags);
  RADEON_WRITE(RADEON_SURFACE0_LOWER_BOUND + 16 * i, sp->lower);
  RADEON_WRITE(RADEON_SURFACE0_UPPER_BOUND + 16 * i, sp->upper);
  return 0;
 }

 return -ENOMEM;
}
