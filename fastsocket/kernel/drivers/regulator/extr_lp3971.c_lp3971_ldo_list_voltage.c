
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;


 int* LDO_VOL_VALUE_MAP (int) ;
 int LP3971_LDO1 ;
 int rdev_get_id (struct regulator_dev*) ;

__attribute__((used)) static int lp3971_ldo_list_voltage(struct regulator_dev *dev, unsigned index)
{
 int ldo = rdev_get_id(dev) - LP3971_LDO1;
 return 1000 * LDO_VOL_VALUE_MAP(ldo)[index];
}
