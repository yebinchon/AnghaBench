
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* surfaces; int mmio; } ;
typedef TYPE_2__ drm_radeon_private_t ;
struct TYPE_5__ {int upper; int lower; int flags; } ;


 scalar_t__ RADEON_SURFACE0_INFO ;
 scalar_t__ RADEON_SURFACE0_LOWER_BOUND ;
 scalar_t__ RADEON_SURFACE0_UPPER_BOUND ;
 int RADEON_WRITE (scalar_t__,int ) ;
 int radeon_do_cp_idle (TYPE_2__*) ;

__attribute__((used)) static void radeon_apply_surface_regs(int surf_index,
          drm_radeon_private_t *dev_priv)
{
 if (!dev_priv->mmio)
  return;

 radeon_do_cp_idle(dev_priv);

 RADEON_WRITE(RADEON_SURFACE0_INFO + 16 * surf_index,
       dev_priv->surfaces[surf_index].flags);
 RADEON_WRITE(RADEON_SURFACE0_LOWER_BOUND + 16 * surf_index,
       dev_priv->surfaces[surf_index].lower);
 RADEON_WRITE(RADEON_SURFACE0_UPPER_BOUND + 16 * surf_index,
       dev_priv->surfaces[surf_index].upper);
}
