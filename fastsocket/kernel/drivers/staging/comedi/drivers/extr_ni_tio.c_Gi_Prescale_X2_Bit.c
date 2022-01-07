
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ni_gpct_variant { ____Placeholder_ni_gpct_variant } ni_gpct_variant ;
typedef enum Gi_Counting_Mode_Reg_Bits { ____Placeholder_Gi_Counting_Mode_Reg_Bits } Gi_Counting_Mode_Reg_Bits ;


 int BUG () ;
 int Gi_660x_Prescale_X2_Bit ;
 int Gi_M_Series_Prescale_X2_Bit ;




__attribute__((used)) static inline enum Gi_Counting_Mode_Reg_Bits Gi_Prescale_X2_Bit(enum
        ni_gpct_variant
        variant)
{
 switch (variant) {
 case 129:
  return 0;
  break;
 case 128:
  return Gi_M_Series_Prescale_X2_Bit;
  break;
 case 130:
  return Gi_660x_Prescale_X2_Bit;
  break;
 default:
  BUG();
  break;
 }
 return 0;
}
