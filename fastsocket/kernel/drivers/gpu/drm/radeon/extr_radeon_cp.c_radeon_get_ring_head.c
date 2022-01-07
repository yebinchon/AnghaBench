
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int flags; scalar_t__ writeback_works; } ;
typedef TYPE_1__ drm_radeon_private_t ;


 int CHIP_R600 ;
 int R600_CP_RB_RPTR ;
 int RADEON_CP_RB_RPTR ;
 int RADEON_FAMILY_MASK ;
 int RADEON_READ (int ) ;
 int radeon_read_ring_rptr (TYPE_1__*,int ) ;

u32 radeon_get_ring_head(drm_radeon_private_t *dev_priv)
{
 if (dev_priv->writeback_works)
  return radeon_read_ring_rptr(dev_priv, 0);
 else {
  if ((dev_priv->flags & RADEON_FAMILY_MASK) >= CHIP_R600)
   return RADEON_READ(R600_CP_RB_RPTR);
  else
   return RADEON_READ(RADEON_CP_RB_RPTR);
 }
}
