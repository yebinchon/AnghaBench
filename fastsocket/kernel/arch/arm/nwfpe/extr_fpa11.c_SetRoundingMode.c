
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int8 ;


 unsigned int const MASK_ROUNDING_MODE ;




 int float_round_down ;
 int float_round_nearest_even ;
 int float_round_to_zero ;
 int float_round_up ;

int8 SetRoundingMode(const unsigned int opcode)
{
 switch (opcode & MASK_ROUNDING_MODE) {
 default:
 case 130:
  return float_round_nearest_even;

 case 129:
  return float_round_up;

 case 131:
  return float_round_down;

 case 128:
  return float_round_to_zero;
 }
}
