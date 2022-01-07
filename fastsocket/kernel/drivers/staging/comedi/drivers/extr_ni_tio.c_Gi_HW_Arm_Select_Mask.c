
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ni_gpct_variant { ____Placeholder_ni_gpct_variant } ni_gpct_variant ;
typedef enum Gi_Counting_Mode_Reg_Bits { ____Placeholder_Gi_Counting_Mode_Reg_Bits } Gi_Counting_Mode_Reg_Bits ;


 int BUG () ;
 int Gi_660x_HW_Arm_Select_Mask ;
 int Gi_M_Series_HW_Arm_Select_Mask ;




__attribute__((used)) static inline enum Gi_Counting_Mode_Reg_Bits Gi_HW_Arm_Select_Mask(enum
           ni_gpct_variant
           variant)
{
 switch (variant) {
 case 129:
  return 0;
  break;
 case 128:
  return Gi_M_Series_HW_Arm_Select_Mask;
  break;
 case 130:
  return Gi_660x_HW_Arm_Select_Mask;
  break;
 default:
  BUG();
  break;
 }
 return 0;
}
