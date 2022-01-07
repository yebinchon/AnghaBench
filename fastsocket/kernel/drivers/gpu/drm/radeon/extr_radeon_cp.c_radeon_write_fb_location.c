
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ drm_radeon_private_t ;


 int CHIP_R600 ;
 int CHIP_RS600 ;
 int CHIP_RS690 ;
 int CHIP_RS740 ;
 int CHIP_RV515 ;
 int CHIP_RV770 ;
 int R500_WRITE_MCIND (int ,int ) ;
 int R520_MC_FB_LOCATION ;
 int R600_MC_VM_FB_LOCATION ;
 int R700_MC_VM_FB_LOCATION ;
 int RADEON_FAMILY_MASK ;
 int RADEON_MC_FB_LOCATION ;
 int RADEON_WRITE (int ,int ) ;
 int RS600_MC_FB_LOCATION ;
 int RS600_WRITE_MCIND (int ,int ) ;
 int RS690_MC_FB_LOCATION ;
 int RS690_WRITE_MCIND (int ,int ) ;
 int RV515_MC_FB_LOCATION ;

__attribute__((used)) static void radeon_write_fb_location(drm_radeon_private_t *dev_priv, u32 fb_loc)
{
 if ((dev_priv->flags & RADEON_FAMILY_MASK) >= CHIP_RV770)
  RADEON_WRITE(R700_MC_VM_FB_LOCATION, fb_loc);
 else if ((dev_priv->flags & RADEON_FAMILY_MASK) >= CHIP_R600)
  RADEON_WRITE(R600_MC_VM_FB_LOCATION, fb_loc);
 else if ((dev_priv->flags & RADEON_FAMILY_MASK) == CHIP_RV515)
  R500_WRITE_MCIND(RV515_MC_FB_LOCATION, fb_loc);
 else if (((dev_priv->flags & RADEON_FAMILY_MASK) == CHIP_RS690) ||
   ((dev_priv->flags & RADEON_FAMILY_MASK) == CHIP_RS740))
  RS690_WRITE_MCIND(RS690_MC_FB_LOCATION, fb_loc);
 else if ((dev_priv->flags & RADEON_FAMILY_MASK) == CHIP_RS600)
  RS600_WRITE_MCIND(RS600_MC_FB_LOCATION, fb_loc);
 else if ((dev_priv->flags & RADEON_FAMILY_MASK) > CHIP_RV515)
  R500_WRITE_MCIND(R520_MC_FB_LOCATION, fb_loc);
 else
  RADEON_WRITE(RADEON_MC_FB_LOCATION, fb_loc);
}
