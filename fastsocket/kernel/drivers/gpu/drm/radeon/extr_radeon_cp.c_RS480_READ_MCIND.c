
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int drm_radeon_private_t ;


 int RADEON_READ (int ) ;
 int RADEON_WRITE (int ,int) ;
 int RS480_NB_MC_DATA ;
 int RS480_NB_MC_INDEX ;

__attribute__((used)) static u32 RS480_READ_MCIND(drm_radeon_private_t *dev_priv, int addr)
{
 u32 ret;
 RADEON_WRITE(RS480_NB_MC_INDEX, addr & 0xff);
 ret = RADEON_READ(RS480_NB_MC_DATA);
 RADEON_WRITE(RS480_NB_MC_INDEX, 0xff);
 return ret;
}
