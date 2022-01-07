
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tps_pmic {TYPE_1__** info; } ;
struct regulator_dev {int dummy; } ;
struct TYPE_2__ {int min_uV; int max_uV; int table_len; int* table; } ;


 int EINVAL ;
 int TPS65023_DCDC_1 ;
 int TPS65023_REG_DEF_CORE ;
 struct tps_pmic* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;
 int tps_65023_reg_write (struct tps_pmic*,int ,int) ;

__attribute__((used)) static int tps65023_dcdc_set_voltage(struct regulator_dev *dev,
    int min_uV, int max_uV)
{
 struct tps_pmic *tps = rdev_get_drvdata(dev);
 int dcdc = rdev_get_id(dev);
 int vsel;

 if (dcdc != TPS65023_DCDC_1)
  return -EINVAL;

 if (min_uV < tps->info[dcdc]->min_uV
   || min_uV > tps->info[dcdc]->max_uV)
  return -EINVAL;
 if (max_uV < tps->info[dcdc]->min_uV
   || max_uV > tps->info[dcdc]->max_uV)
  return -EINVAL;

 for (vsel = 0; vsel < tps->info[dcdc]->table_len; vsel++) {
  int mV = tps->info[dcdc]->table[vsel];
  int uV = mV * 1000;


  if (min_uV <= uV && uV <= max_uV)
   break;
 }


 if (vsel == tps->info[dcdc]->table_len)
  return -EINVAL;
 else
  return tps_65023_reg_write(tps, TPS65023_REG_DEF_CORE, vsel);
}
