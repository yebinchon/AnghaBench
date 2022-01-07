
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int CP_INT_CNTL ;
 int RREG32 (int ) ;
 int SRBM_GFX_CNTL ;
 int WREG32 (int ,int) ;

void cayman_cp_int_cntl_setup(struct radeon_device *rdev,
         int ring, u32 cp_int_cntl)
{
 u32 srbm_gfx_cntl = RREG32(SRBM_GFX_CNTL) & ~3;

 WREG32(SRBM_GFX_CNTL, srbm_gfx_cntl | (ring & 3));
 WREG32(CP_INT_CNTL, cp_int_cntl);
}
