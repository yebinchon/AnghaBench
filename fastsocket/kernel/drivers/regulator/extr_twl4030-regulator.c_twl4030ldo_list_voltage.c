
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twlreg_info {int* table; } ;
struct regulator_dev {int dummy; } ;


 scalar_t__ IS_UNSUP (int) ;
 int LDO_MV (int) ;
 struct twlreg_info* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static int twl4030ldo_list_voltage(struct regulator_dev *rdev, unsigned index)
{
 struct twlreg_info *info = rdev_get_drvdata(rdev);
 int mV = info->table[index];

 return IS_UNSUP(mV) ? 0 : (LDO_MV(mV) * 1000);
}
