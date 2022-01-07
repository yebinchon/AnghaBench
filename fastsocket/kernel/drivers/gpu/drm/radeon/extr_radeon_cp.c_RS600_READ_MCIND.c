
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int drm_radeon_private_t ;


 int RADEON_READ (int ) ;
 int RADEON_WRITE (int ,int) ;
 int RS600_MC_ADDR_MASK ;
 int RS600_MC_DATA ;
 int RS600_MC_INDEX ;
 int RS600_MC_IND_CITF_ARB0 ;

__attribute__((used)) static u32 RS600_READ_MCIND(drm_radeon_private_t *dev_priv, int addr)
{
 u32 ret;
 RADEON_WRITE(RS600_MC_INDEX, ((addr & RS600_MC_ADDR_MASK) |
          RS600_MC_IND_CITF_ARB0));
 ret = RADEON_READ(RS600_MC_DATA);
 return ret;
}
