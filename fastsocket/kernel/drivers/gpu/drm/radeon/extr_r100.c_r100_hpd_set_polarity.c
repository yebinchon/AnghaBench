
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;
typedef enum radeon_hpd_id { ____Placeholder_radeon_hpd_id } radeon_hpd_id ;


 int RADEON_FP2_DETECT_INT_POL ;
 int RADEON_FP2_GEN_CNTL ;
 int RADEON_FP_DETECT_INT_POL ;
 int RADEON_FP_GEN_CNTL ;


 int RREG32 (int ) ;
 int WREG32 (int ,int ) ;
 int r100_hpd_sense (struct radeon_device*,int) ;

void r100_hpd_set_polarity(struct radeon_device *rdev,
      enum radeon_hpd_id hpd)
{
 u32 tmp;
 bool connected = r100_hpd_sense(rdev, hpd);

 switch (hpd) {
 case 129:
  tmp = RREG32(RADEON_FP_GEN_CNTL);
  if (connected)
   tmp &= ~RADEON_FP_DETECT_INT_POL;
  else
   tmp |= RADEON_FP_DETECT_INT_POL;
  WREG32(RADEON_FP_GEN_CNTL, tmp);
  break;
 case 128:
  tmp = RREG32(RADEON_FP2_GEN_CNTL);
  if (connected)
   tmp &= ~RADEON_FP2_DETECT_INT_POL;
  else
   tmp |= RADEON_FP2_DETECT_INT_POL;
  WREG32(RADEON_FP2_GEN_CNTL, tmp);
  break;
 default:
  break;
 }
}
