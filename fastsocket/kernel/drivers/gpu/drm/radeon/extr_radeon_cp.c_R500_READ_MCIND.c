
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int drm_radeon_private_t ;


 int R520_MC_IND_DATA ;
 int R520_MC_IND_INDEX ;
 int RADEON_READ (int ) ;
 int RADEON_WRITE (int ,int) ;

__attribute__((used)) static u32 R500_READ_MCIND(drm_radeon_private_t *dev_priv, int addr)
{
 u32 ret;
 RADEON_WRITE(R520_MC_IND_INDEX, 0x7f0000 | (addr & 0xff));
 ret = RADEON_READ(R520_MC_IND_DATA);
 RADEON_WRITE(R520_MC_IND_INDEX, 0);
 return ret;
}
