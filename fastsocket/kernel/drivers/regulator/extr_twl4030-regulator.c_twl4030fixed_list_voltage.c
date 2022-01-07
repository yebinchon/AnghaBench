
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twlreg_info {int min_mV; } ;
struct regulator_dev {int dummy; } ;


 struct twlreg_info* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static int twl4030fixed_list_voltage(struct regulator_dev *rdev, unsigned index)
{
 struct twlreg_info *info = rdev_get_drvdata(rdev);

 return info->min_mV * 1000;
}
