
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tps_pmic {TYPE_1__** info; } ;
struct regulator_dev {int dummy; } ;
struct TYPE_2__ {unsigned int table_len; int* table; } ;


 int EINVAL ;
 int TPS6507X_LDO_1 ;
 int TPS6507X_LDO_2 ;
 struct tps_pmic* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;

__attribute__((used)) static int tps6507x_ldo_list_voltage(struct regulator_dev *dev,
     unsigned selector)
{
 struct tps_pmic *tps = rdev_get_drvdata(dev);
 int ldo = rdev_get_id(dev);

 if (ldo < TPS6507X_LDO_1 || ldo > TPS6507X_LDO_2)
  return -EINVAL;

 if (selector >= tps->info[ldo]->table_len)
  return -EINVAL;
 else
  return tps->info[ldo]->table[selector] * 1000;
}
