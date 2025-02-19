
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adt7462_data {int* pin_cfg; } ;


 int ADT7462_DIODE1_INPUT ;
 int ADT7462_DIODE3_INPUT ;
 int ADT7462_PIN13_INPUT ;
 int ADT7462_PIN15_INPUT ;
 int ADT7462_PIN19_INPUT ;
 int ADT7462_PIN21_INPUT ;
 int ADT7462_PIN22_INPUT ;
 int ADT7462_PIN23 ;
 int ADT7462_PIN24 ;
 int ADT7462_PIN25 ;
 int ADT7462_PIN26 ;
 int ADT7462_PIN28_SHIFT ;
 int ADT7462_PIN28_VOLT ;
 int ADT7462_PIN7_INPUT ;
 int ADT7462_PIN8_INPUT ;
 int ADT7462_VID_INPUT ;
 int MASK_AND_SHIFT (int,int ) ;

__attribute__((used)) static int voltage_multiplier(struct adt7462_data *data, int which)
{
 switch (which) {
 case 0:
  if (!(data->pin_cfg[0] & ADT7462_PIN7_INPUT))
   return 62500;
  break;
 case 1:
  switch (MASK_AND_SHIFT(data->pin_cfg[1], ADT7462_PIN23)) {
  case 0:
   if (data->pin_cfg[0] & ADT7462_VID_INPUT)
    return 12500;
   return 6250;
  case 1:
   return 13000;
  case 2:
   return 9400;
  case 3:
   return 7800;
  }
 case 2:
  if (!(data->pin_cfg[1] & ADT7462_PIN22_INPUT))
   return 62500;
  break;
 case 3:
  if (!(data->pin_cfg[1] & ADT7462_PIN21_INPUT))
   return 26000;
  break;
 case 4:
  if (!(data->pin_cfg[0] & ADT7462_DIODE3_INPUT)) {
   if (data->pin_cfg[1] & ADT7462_PIN19_INPUT)
    return 4690;
   return 6500;
  }
  break;
 case 5:
  if (!(data->pin_cfg[0] & ADT7462_DIODE1_INPUT)) {
   if (data->pin_cfg[1] & ADT7462_PIN15_INPUT)
    return 9400;
   return 13000;
  }
  break;
 case 6:
  if (!(data->pin_cfg[1] & ADT7462_PIN13_INPUT))
   return 17200;
  break;
 case 7:
  if (!(data->pin_cfg[1] & ADT7462_PIN8_INPUT))
   return 62500;
  break;
 case 8:
  switch (MASK_AND_SHIFT(data->pin_cfg[2], ADT7462_PIN26)) {
  case 0:
   return 15600;
  case 1:
   return 6250;
  }
  break;
 case 9:
  switch (MASK_AND_SHIFT(data->pin_cfg[2], ADT7462_PIN25)) {
  case 0:
   return 17200;
  case 1:
   return 6250;
  }
  break;
 case 10:
  switch (MASK_AND_SHIFT(data->pin_cfg[2], ADT7462_PIN24)) {
  case 0:
   return 6250;
  case 1:
   return 13000;
  case 2:
   return 9400;
  case 3:
   return 7800;
  }
 case 11:
 case 12:
  if (data->pin_cfg[3] >> ADT7462_PIN28_SHIFT ==
     ADT7462_PIN28_VOLT &&
      !(data->pin_cfg[0] & ADT7462_VID_INPUT))
   return 7800;
 }
 return 0;
}
