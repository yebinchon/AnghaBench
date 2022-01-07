
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tps_pmic {TYPE_1__** info; } ;
struct regulator_dev {int dummy; } ;
struct TYPE_2__ {int table_len; int* table; int min_uV; } ;


 int EINVAL ;
 int TPS65023_DCDC_1 ;
 int TPS65023_DCDC_3 ;
 int TPS65023_REG_DEF_CORE ;
 struct tps_pmic* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;
 int tps_65023_reg_read (struct tps_pmic*,int ) ;

__attribute__((used)) static int tps65023_dcdc_get_voltage(struct regulator_dev *dev)
{
 struct tps_pmic *tps = rdev_get_drvdata(dev);
 int data, dcdc = rdev_get_id(dev);

 if (dcdc < TPS65023_DCDC_1 || dcdc > TPS65023_DCDC_3)
  return -EINVAL;

 if (dcdc == TPS65023_DCDC_1) {
  data = tps_65023_reg_read(tps, TPS65023_REG_DEF_CORE);
  if (data < 0)
   return data;
  data &= (tps->info[dcdc]->table_len - 1);
  return tps->info[dcdc]->table[data] * 1000;
 } else
  return tps->info[dcdc]->min_uV;
}
