
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;
typedef enum radeon_hpd_id { ____Placeholder_radeon_hpd_id } radeon_hpd_id ;


 int RADEON_FP2_DETECT_SENSE ;
 int RADEON_FP2_GEN_CNTL ;
 int RADEON_FP_DETECT_SENSE ;
 int RADEON_FP_GEN_CNTL ;


 int RREG32 (int ) ;

bool r100_hpd_sense(struct radeon_device *rdev, enum radeon_hpd_id hpd)
{
 bool connected = 0;

 switch (hpd) {
 case 129:
  if (RREG32(RADEON_FP_GEN_CNTL) & RADEON_FP_DETECT_SENSE)
   connected = 1;
  break;
 case 128:
  if (RREG32(RADEON_FP2_GEN_CNTL) & RADEON_FP2_DETECT_SENSE)
   connected = 1;
  break;
 default:
  break;
 }
 return connected;
}
