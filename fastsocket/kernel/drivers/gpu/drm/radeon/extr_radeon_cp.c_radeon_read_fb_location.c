
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int flags; } ;
typedef TYPE_1__ drm_radeon_private_t ;


 int CHIP_R600 ;
 int CHIP_RS600 ;
 int CHIP_RS690 ;
 int CHIP_RS740 ;
 int CHIP_RV515 ;
 int CHIP_RV770 ;
 int R500_READ_MCIND (TYPE_1__*,int ) ;
 int R520_MC_FB_LOCATION ;
 int R600_MC_VM_FB_LOCATION ;
 int R700_MC_VM_FB_LOCATION ;
 int RADEON_FAMILY_MASK ;
 int RADEON_MC_FB_LOCATION ;
 int RADEON_READ (int ) ;
 int RS600_MC_FB_LOCATION ;
 int RS600_READ_MCIND (TYPE_1__*,int ) ;
 int RS690_MC_FB_LOCATION ;
 int RS690_READ_MCIND (TYPE_1__*,int ) ;
 int RV515_MC_FB_LOCATION ;

u32 radeon_read_fb_location(drm_radeon_private_t *dev_priv)
{

 if ((dev_priv->flags & RADEON_FAMILY_MASK) >= CHIP_RV770)
  return RADEON_READ(R700_MC_VM_FB_LOCATION);
 else if ((dev_priv->flags & RADEON_FAMILY_MASK) >= CHIP_R600)
  return RADEON_READ(R600_MC_VM_FB_LOCATION);
 else if ((dev_priv->flags & RADEON_FAMILY_MASK) == CHIP_RV515)
  return R500_READ_MCIND(dev_priv, RV515_MC_FB_LOCATION);
 else if (((dev_priv->flags & RADEON_FAMILY_MASK) == CHIP_RS690) ||
   ((dev_priv->flags & RADEON_FAMILY_MASK) == CHIP_RS740))
  return RS690_READ_MCIND(dev_priv, RS690_MC_FB_LOCATION);
 else if ((dev_priv->flags & RADEON_FAMILY_MASK) == CHIP_RS600)
  return RS600_READ_MCIND(dev_priv, RS600_MC_FB_LOCATION);
 else if ((dev_priv->flags & RADEON_FAMILY_MASK) > CHIP_RV515)
  return R500_READ_MCIND(dev_priv, R520_MC_FB_LOCATION);
 else
  return RADEON_READ(RADEON_MC_FB_LOCATION);
}
