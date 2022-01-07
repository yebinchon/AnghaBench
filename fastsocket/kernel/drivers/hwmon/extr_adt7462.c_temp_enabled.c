
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adt7462_data {int* pin_cfg; } ;


 int ADT7462_DIODE1_INPUT ;
 int ADT7462_DIODE3_INPUT ;

__attribute__((used)) static int temp_enabled(struct adt7462_data *data, int which)
{
 switch (which) {
 case 0:
 case 2:
  return 1;
 case 1:
  if (data->pin_cfg[0] & ADT7462_DIODE1_INPUT)
   return 1;
  break;
 case 3:
  if (data->pin_cfg[0] & ADT7462_DIODE3_INPUT)
   return 1;
  break;
 }
 return 0;
}
