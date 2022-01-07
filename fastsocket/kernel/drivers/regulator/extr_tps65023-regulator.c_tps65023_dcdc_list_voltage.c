
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tps_pmic {TYPE_1__** info; } ;
struct regulator_dev {int dummy; } ;
struct TYPE_2__ {unsigned int table_len; int* table; int min_uV; } ;


 int EINVAL ;
 int TPS65023_DCDC_1 ;
 int TPS65023_DCDC_3 ;
 struct tps_pmic* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;

__attribute__((used)) static int tps65023_dcdc_list_voltage(struct regulator_dev *dev,
     unsigned selector)
{
 struct tps_pmic *tps = rdev_get_drvdata(dev);
 int dcdc = rdev_get_id(dev);

 if (dcdc < TPS65023_DCDC_1 || dcdc > TPS65023_DCDC_3)
  return -EINVAL;

 if (dcdc == TPS65023_DCDC_1) {
  if (selector >= tps->info[dcdc]->table_len)
   return -EINVAL;
  else
   return tps->info[dcdc]->table[selector] * 1000;
 } else
  return tps->info[dcdc]->min_uV;
}
