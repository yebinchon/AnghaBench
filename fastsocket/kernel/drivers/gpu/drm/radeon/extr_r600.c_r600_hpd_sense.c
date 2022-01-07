
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;
typedef enum radeon_hpd_id { ____Placeholder_radeon_hpd_id } radeon_hpd_id ;


 scalar_t__ ASIC_IS_DCE3 (struct radeon_device*) ;
 int DC_HOT_PLUG_DETECT1_INT_STATUS ;
 int DC_HOT_PLUG_DETECT2_INT_STATUS ;
 int DC_HOT_PLUG_DETECT3_INT_STATUS ;
 int DC_HOT_PLUG_DETECTx_SENSE ;
 int DC_HPD1_INT_STATUS ;
 int DC_HPD2_INT_STATUS ;
 int DC_HPD3_INT_STATUS ;
 int DC_HPD4_INT_STATUS ;
 int DC_HPD5_INT_STATUS ;
 int DC_HPD6_INT_STATUS ;
 int DC_HPDx_SENSE ;






 int RREG32 (int ) ;

bool r600_hpd_sense(struct radeon_device *rdev, enum radeon_hpd_id hpd)
{
 bool connected = 0;

 if (ASIC_IS_DCE3(rdev)) {
  switch (hpd) {
  case 133:
   if (RREG32(DC_HPD1_INT_STATUS) & DC_HPDx_SENSE)
    connected = 1;
   break;
  case 132:
   if (RREG32(DC_HPD2_INT_STATUS) & DC_HPDx_SENSE)
    connected = 1;
   break;
  case 131:
   if (RREG32(DC_HPD3_INT_STATUS) & DC_HPDx_SENSE)
    connected = 1;
   break;
  case 130:
   if (RREG32(DC_HPD4_INT_STATUS) & DC_HPDx_SENSE)
    connected = 1;
   break;

  case 129:
   if (RREG32(DC_HPD5_INT_STATUS) & DC_HPDx_SENSE)
    connected = 1;
   break;
  case 128:
   if (RREG32(DC_HPD6_INT_STATUS) & DC_HPDx_SENSE)
    connected = 1;
   break;
  default:
   break;
  }
 } else {
  switch (hpd) {
  case 133:
   if (RREG32(DC_HOT_PLUG_DETECT1_INT_STATUS) & DC_HOT_PLUG_DETECTx_SENSE)
    connected = 1;
   break;
  case 132:
   if (RREG32(DC_HOT_PLUG_DETECT2_INT_STATUS) & DC_HOT_PLUG_DETECTx_SENSE)
    connected = 1;
   break;
  case 131:
   if (RREG32(DC_HOT_PLUG_DETECT3_INT_STATUS) & DC_HOT_PLUG_DETECTx_SENSE)
    connected = 1;
   break;
  default:
   break;
  }
 }
 return connected;
}
