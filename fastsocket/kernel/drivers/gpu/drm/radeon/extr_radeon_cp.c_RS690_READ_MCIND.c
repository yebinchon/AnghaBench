
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int drm_radeon_private_t ;


 int RADEON_READ (int ) ;
 int RADEON_WRITE (int ,int) ;
 int RS690_MC_DATA ;
 int RS690_MC_INDEX ;
 int RS690_MC_INDEX_MASK ;

__attribute__((used)) static u32 RS690_READ_MCIND(drm_radeon_private_t *dev_priv, int addr)
{
 u32 ret;
 RADEON_WRITE(RS690_MC_INDEX, (addr & RS690_MC_INDEX_MASK));
 ret = RADEON_READ(RS690_MC_DATA);
 RADEON_WRITE(RS690_MC_INDEX, RS690_MC_INDEX_MASK);
 return ret;
}
