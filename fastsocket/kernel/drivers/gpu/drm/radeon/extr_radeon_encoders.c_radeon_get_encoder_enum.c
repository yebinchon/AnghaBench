
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct radeon_device {int family; } ;
struct drm_device {struct radeon_device* dev_private; } ;


 int ASIC_IS_AVIVO (struct radeon_device*) ;
 int CHIP_RS300 ;
 int CHIP_RS400 ;
 int CHIP_RS480 ;
 int CHIP_RS600 ;
 int CHIP_RS690 ;
 int CHIP_RS740 ;
 int ENCODER_INTERNAL_DAC1_ENUM_ID1 ;
 int ENCODER_INTERNAL_DAC2_ENUM_ID1 ;
 int ENCODER_INTERNAL_DDI_ENUM_ID1 ;
 int ENCODER_INTERNAL_DVO1_ENUM_ID1 ;
 int ENCODER_INTERNAL_KLDSCP_DAC1_ENUM_ID1 ;
 int ENCODER_INTERNAL_KLDSCP_DAC2_ENUM_ID1 ;
 int ENCODER_INTERNAL_KLDSCP_DVO1_ENUM_ID1 ;
 int ENCODER_INTERNAL_KLDSCP_TMDS1_ENUM_ID1 ;
 int ENCODER_INTERNAL_LVDS_ENUM_ID1 ;
 int ENCODER_INTERNAL_LVTM1_ENUM_ID1 ;
 int ENCODER_INTERNAL_TMDS1_ENUM_ID1 ;

uint32_t
radeon_get_encoder_enum(struct drm_device *dev, uint32_t supported_device, uint8_t dac)
{
 struct radeon_device *rdev = dev->dev_private;
 uint32_t ret = 0;

 switch (supported_device) {
 case 137:
 case 129:
 case 128:
 case 136:
 case 135:
  switch (dac) {
  case 1:
   if ((rdev->family == CHIP_RS300) ||
       (rdev->family == CHIP_RS400) ||
       (rdev->family == CHIP_RS480))
    ret = ENCODER_INTERNAL_DAC2_ENUM_ID1;
   else if (ASIC_IS_AVIVO(rdev))
    ret = ENCODER_INTERNAL_KLDSCP_DAC1_ENUM_ID1;
   else
    ret = ENCODER_INTERNAL_DAC1_ENUM_ID1;
   break;
  case 2:
   if (ASIC_IS_AVIVO(rdev))
    ret = ENCODER_INTERNAL_KLDSCP_DAC2_ENUM_ID1;
   else {



    ret = ENCODER_INTERNAL_DAC2_ENUM_ID1;
   }
   break;
  case 3:
   if (ASIC_IS_AVIVO(rdev))
    ret = ENCODER_INTERNAL_KLDSCP_DVO1_ENUM_ID1;
   else
    ret = ENCODER_INTERNAL_DVO1_ENUM_ID1;
   break;
  }
  break;
 case 131:
  if (ASIC_IS_AVIVO(rdev))
   ret = ENCODER_INTERNAL_LVTM1_ENUM_ID1;
  else
   ret = ENCODER_INTERNAL_LVDS_ENUM_ID1;
  break;
 case 134:
  if ((rdev->family == CHIP_RS300) ||
      (rdev->family == CHIP_RS400) ||
      (rdev->family == CHIP_RS480))
   ret = ENCODER_INTERNAL_DVO1_ENUM_ID1;
  else if (ASIC_IS_AVIVO(rdev))
   ret = ENCODER_INTERNAL_KLDSCP_TMDS1_ENUM_ID1;
  else
   ret = ENCODER_INTERNAL_TMDS1_ENUM_ID1;
  break;
 case 130:
 case 133:
  if ((rdev->family == CHIP_RS600) ||
      (rdev->family == CHIP_RS690) ||
      (rdev->family == CHIP_RS740))
   ret = ENCODER_INTERNAL_DDI_ENUM_ID1;
  else if (ASIC_IS_AVIVO(rdev))
   ret = ENCODER_INTERNAL_KLDSCP_DVO1_ENUM_ID1;
  else
   ret = ENCODER_INTERNAL_DVO1_ENUM_ID1;
  break;
 case 132:
  ret = ENCODER_INTERNAL_LVTM1_ENUM_ID1;
  break;
 }

 return ret;
}
