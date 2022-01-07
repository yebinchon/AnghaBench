
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_radeon_private {int flags; } ;


 int CHIP_R420 ;
 int CHIP_RS400 ;
 int CHIP_RS480 ;
 int CHIP_RS690 ;
 int CHIP_RS740 ;
 int CHIP_RV350 ;
 int RADEON_BUS_CNTL ;
 int RADEON_BUS_MASTER_DIS ;
 int RADEON_FAMILY_MASK ;
 int RADEON_READ (int ) ;
 int RADEON_WRITE (int ,int) ;
 int RS600_BUS_MASTER_DIS ;

void radeon_enable_bm(struct drm_radeon_private *dev_priv)
{
 u32 tmp;

 if (((dev_priv->flags & RADEON_FAMILY_MASK) == CHIP_RS690) ||
     ((dev_priv->flags & RADEON_FAMILY_MASK) == CHIP_RS740)) {

  tmp = RADEON_READ(RADEON_BUS_CNTL) & ~RS600_BUS_MASTER_DIS;
  RADEON_WRITE(RADEON_BUS_CNTL, tmp);
 } else if (((dev_priv->flags & RADEON_FAMILY_MASK) <= CHIP_RV350) ||
     ((dev_priv->flags & RADEON_FAMILY_MASK) == CHIP_R420) ||
     ((dev_priv->flags & RADEON_FAMILY_MASK) == CHIP_RS400) ||
     ((dev_priv->flags & RADEON_FAMILY_MASK) == CHIP_RS480)) {

  tmp = RADEON_READ(RADEON_BUS_CNTL) & ~RADEON_BUS_MASTER_DIS;
  RADEON_WRITE(RADEON_BUS_CNTL, tmp);
 }
}
