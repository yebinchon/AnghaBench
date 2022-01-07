
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator {int dummy; } ;


 int regulator_count_voltages (struct regulator*) ;
 int regulator_list_voltage (struct regulator*,int) ;

int regulator_is_supported_voltage(struct regulator *regulator,
       int min_uV, int max_uV)
{
 int i, voltages, ret;

 ret = regulator_count_voltages(regulator);
 if (ret < 0)
  return ret;
 voltages = ret;

 for (i = 0; i < voltages; i++) {
  ret = regulator_list_voltage(regulator, i);

  if (ret >= min_uV && ret <= max_uV)
   return 1;
 }

 return 0;
}
